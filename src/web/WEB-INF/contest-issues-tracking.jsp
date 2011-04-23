<%--
  - Author: TCSDEVELOPER
  - Version: 1.0.1
  - Copyright (C) 2011 TopCoder Inc., All Rights Reserved.
  -
  - Description: This page renders the issues and bug races of the contest.
  - Version 1.0.1 - Fix an issue with assignee display
  -
  - Version 1.0.1 (TC Cockpit Bug Tracking R1 Cockpit Project Tracking assembly).
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="/WEB-INF/includes/taglibs.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <jsp:include page="includes/htmlhead.jsp"/>
    <jsp:include page="includes/paginationSetup.jsp"/>
    <ui:projectPageType tab="contests"/>
    <ui:contestPageType tab="issueTracking"/>
</head>

<body id="page">
<div id="wrapper">
    <div id="wrapperInner">
        <div id="container">
            <div id="content">

                <jsp:include page="includes/header.jsp"/>

                <div id="mainContent">

                    <jsp:include page="includes/right.jsp"/>

                    <div id="area1"><!-- the main area -->
                        <div class="area1Content">
                            <div class="currentPage">
                                <a href="<s:url action="dashboardActive" namespace="/"/>" class="home">Dashboard</a> &gt;
                                <a href="<s:url action="currentProjectDetails" namespace="/">
                                    <s:param name="formData.projectId" value="sessionData.currentProjectContext.id"/>
                                </s:url>"><s:property value="sessionData.currentProjectContext.name"/></a> &gt;
                                <strong><s:property value="viewData.contestStats.contest.title"/></strong>
                            </div>
                            <div class="areaHeader">
                                <h2 class="title contestTitle"><s:property value="viewData.contestStats.contest.title"/></h2>
                            </div>
                            <!-- End .areaHeader -->

                            <jsp:include page="includes/contest/contestStats.jsp"/>


                            <jsp:include page="includes/contest/tabs.jsp"/>

                        <div class="container2 tabs3Container" id="bugRace">


							<div class="contestBugRace issueTabs">

                                <!-- total -->
                                <div class="total">
                                    <dl>
                                        <dt>All Bug Races :</dt>
                                        <dd><s:property value="viewData.bugRacesNumber"/></dd>
                                        <dt class="lastOngoing">Ongoing Bug Races :</dt>
                                        <dd class="lastOngoingNum"><s:property value="viewData.unresolvedBugRacesNumber"/></dd>
                                    </dl>
                                </div>
                                <!-- End .total -->

                                <div class="viewAll">
                                    <input type="checkbox" class="checkbox" /><label>View All Details</label>
                                </div>

							</div><!-- End #issueTabs -->

							<div class="container2Left"><div class="container2Right"><div class="container2BottomClear">
                            	<div class="container2Opt">
									<div class="containerNoPadding">


                                        <div class="issueSelection">
                                        	<div class="bankSelectionHead">
                                            	<div class="viewSort">
                                                	<label>View :</label>
                                                    <select class="select2">
                                                        <option>All Bug Races(<s:property value="viewData.bugRacesNumber"/>)</option>
                                                        <option>Ongoing Bug Races(<s:property value="viewData.unresolvedBugRacesNumber"/>)</option>
                                                        <option>Resolved Bug Races(<s:property value="viewData.resolvedBugRacesNumber"/>)</option>
                                                    </select>
                                                </div>
                                                <ul class="bankSelectionTab">
                                                	<li class="off issueTab"><a href="javascript:;"> <span>Issue (<s:property value="viewData.issuesNumber"/>)</span></a></li>
                                                    <li class="bugRaceTab"><a href="javascript:;"> <span>Bug Race (<s:property value="viewData.bugRacesNumber"/>)</span> </a></li>
                                                </ul><!-- End #bankSelectionTab -->
                                            </div><!-- End #bankSelectionHead -->

                                            <!-- issue selection content -->
                                            <div class="issueSelectionContent">

                                                <!-- content -->
                                                <div class="content">

                                               <c:forEach items="${viewData.bugRaces}" var="bugRace" varStatus="loop">


                                                	<!-- row -->
                                                    <div class="rowItem">

                                                        <!-- head -->
                                                        <div class="issueContestHead">
                                                            <div class="bugContestTitle">
                                                                <p><a href='<c:url value="${bugRace.issueLink}"/>' target="_blank"><c:out value="${bugRace.projectName}"/> / <c:out value="${bugRace.issueKey}"/></a></p>
                                                                <p class="issueName"><a href='<c:url value="${bugRace.issueLink}"/>' target="_blank"><c:out value="${bugRace.issueSummary}"/></a></p>
                                                            </div>
                                                            <div class="viewAndShow">
                                                                <a href="javascript:;" class="viewDetails">View Details</a>
                                                                <a href="javascript:;" class="hideDetails hidden">Hide Details</a>
                                                            </div>
                                                            <div class="clear"></div>
                                                        </div>
                                                        <!-- End .issueContestHead -->

                                                        <!-- short details -->
                                                        <div class="shortDetails">
                                                            <dl>
                                                                <dt>Status : </dt>
                                                                <dd class="issueStatus"><strong class="${bugRace.issueStatusClass}"><c:out value="${bugRace.statusName}"/></strong></dd>
                                                                <dt>Created : </dt>
                                                                <dd><c:out value="${bugRace.creationDateString}"/></dd>
                                                            </dl>
                                                            <div class="clear"></div>
                                                        </div>
                                                        <!-- End .shortDetails -->

                                                        <!-- long details -->
                                                        <div class="longDetails hidden">

                                                            <ul>
                                                                <!-- detail -->
                                                                <li class="detailList">
                                                                    <h3>Details</h3>
                                                                    <dl>
                                                                        <dt>Status :</dt>
                                                                        <dd><strong class="${bugRace.issueStatusClass}"><c:out value="${bugRace.statusName}"/></strong></dd>
                                                                        <dt>Resolution :</dt>
                                                                        <dd><c:out value="${bugRace.resolutionName}"/></dd>
                                                                        <dt>1st Prize :</dt>
                                                                        <dd><fmt:formatNumber value="${bugRace.prize}" pattern="$###,##0.00"/></dd>
                                                                        <dt>Votes :</dt>
                                                                        <dd><c:out value="${bugRace.votesNumber}"/></dd>
                                                                    </dl>
                                                                </li>
                                                                <!-- End detail -->

                                                                <!-- people -->
                                                                <li class="peopleList">
                                                                    <h3>People</h3>
                                                                    <dl>
                                                                        <dt>Reporter :</dt>
                                                                        <dd><a href="${bugRace.reporterProfile}" target="_blank"><c:out value="${bugRace.reporter}"/></a></dd>
                                                                        <dt>Assignee :</dt>
                                                                        <dd>
                                                                            <c:choose>
                                                                                <c:when test="${bugRace.assignee == 'Unassigned'}">
                                                                                    Unassigned
                                                                                </c:when>
                                                                                <c:otherwise>
                                                                                    <a href="${bugRace.assigneeProfile}" target="_blank"><c:out value="${bugRace.assignee}"/></a>
                                                                                </c:otherwise>
                                                                            </c:choose>

                                                                        </dd>
                                                                        <dt>Voters :</dt>
                                                                        <dd>Not Available Now</dd>
                                                                    </dl>
                                                                </li>
                                                                <!-- End people -->

                                                                <!-- dates -->
                                                                <li class="datesList">
                                                                    <h3>Dates</h3>
                                                                    <dl>
                                                                        <dt>Created :</dt>
                                                                        <dd><c:out value="${bugRace.creationDateString}"/></dd>
                                                                        <dt>Updated :</dt>
                                                                        <dd><c:out value="${bugRace.updateDateString}"/></dd>
                                                                        <dt>Due :</dt>
                                                                        <dd><c:out value="${bugRace.dueDateString}"/></dd>
                                                                    </dl>
                                                                </li>
                                                                <!-- End .dates -->

                                                                <!-- issue link -->
                                                                <li class="linkList">
                                                                    <h3>Issue Links</h3>
                                                                    <dl>
                                                                        <dd><p>This issue is cloned by:</p>
                                                                            Not Available Now
                                                                        </dd>
                                                                    </dl>
                                                                </li>
                                                                <!-- End issue link -->
                                                            </ul>

                                                            <div class="clear"></div>

                                                        </div>
                                                        <!-- End .longDetails -->

                                                    </div>
                                               </c:forEach>
                                                    <!-- row -->
                                                </div>
                                                <!-- End .content -->
                                                <div class="clear"></div>

                                            </div>
                                            <!-- End .issueSelectionContent -->

                                        </div><!-- End #bankSelection -->

								  </div><!-- End .container2Content -->

                                  <div class="corner bl"></div>
                                  <div class="corner br"></div>

                                </div>
							</div></div></div>
						</div><!-- End .container2 -->

                        <div class="container2 tabs3Container" id="issue">



                                                    <div class="contestBugRace issueTabs">

                                                        <!-- total -->
                                                        <div class="total">
                                                            <dl>
                                                                <dt>All Issues :</dt>
                                                                <dd><s:property value="viewData.issuesNumber"/></dd>
                                                                <dt class="lastOngoing">Unresolved Issues :</dt>
                                                                <dd class="lastOngoingNum"><s:property value="viewData.unresolvedIssuesNumber"/></dd>
                                                            </dl>
                                                        </div>
                                                        <!-- End .total -->

                                                        <div class="viewAll">
                                                            <input type="checkbox" class="checkbox" /><label>View All Details</label>
                                                        </div>

                                                    </div><!-- End #issueTabs -->

                                                    <div class="container2Left"><div class="container2Right"><div class="container2BottomClear">
                                                        <div class="container2Opt">
                                                            <div class="containerNoPadding">


                                                                <div class="issueSelection">
                                                                    <div class="bankSelectionHead">
                                                                        <div class="viewSort">
                                                                            <label>View :</label>
                                                                            <select class="select2">
                                                                                <option>All Issues(<s:property value="viewData.issuesNumber"/>)</option>
                                                                                <option>Unresolved Issues(<s:property value="viewData.unresolvedIssuesNumber"/>)</option>
                                                                                <option>Resolved Issues(<s:property value="viewData.resolvedIssuesNumber"/>)</option>
                                                                            </select>
                                                                        </div>
                                                                        <ul class="bankSelectionTab">
                                                                            <li class="issueTab"><a href="javascript:;"> <span>Issue (<s:property value="viewData.issuesNumber"/>)</span></a></li>
                                                                            <li class="off bugRaceTab"><a href="javascript:;"> <span>Bug Race (<s:property value="viewData.bugRacesNumber"/>)</span> </a></li>
                                                                        </ul><!-- End #bankSelectionTab -->
                                                                    </div><!-- End #bankSelectionHead -->

                                                                    <!-- issue selection content -->
                                                                    <div class="issueSelectionContent">

                                                                        <!-- content -->
                                                                        <div class="content">

                                                                        <c:forEach items="${viewData.issues}" var="issue" varStatus="loop">

                                                                            <!-- row -->
                                                                            <div class="rowItem">

                                                                                <!-- head -->
                                                                                <div class="issueContestHead">
                                                                                    <div class="issueContestTitle">
                                                                                        <p><a href='<c:url value="${issue.issueLink}"/>' target="_blank"><c:out value="${issue.projectName}"/> / <c:out value="${issue.issueKey}"/></a></p>
                                                                                        <p class="issueName"><a href='<c:url value="${issue.issueLink}"/>' target="_blank"><c:out value="${issue.issueSummary}"/></a></p>
                                                                                    </div>
                                                                                    <div class="viewAndShow">
                                                                                        <a href="javascript:;" class="viewDetails">View Details</a>
                                                                                        <a href="javascript:;" class="hideDetails hidden">Hide Details</a>
                                                                                    </div>
                                                                                    <div class="clear"></div>
                                                                                </div>
                                                                                <!-- End .issueContestHead -->

                                                                                <!-- short details -->
                                                                                <div class="shortDetails">
                                                                                    <dl>
                                                                                        <dt>Status : </dt>
                                                                                         <dd class="issueStatus"><strong class="${issue.issueStatusClass}"><c:out value="${issue.statusName}"/></strong></dd>
                                                                                        <dt>Created : </dt>
                                                                                       <dd><c:out value="${issue.creationDateString}"/></dd>
                                                                                    </dl>
                                                                                    <div class="clear"></div>
                                                                                </div>
                                                                                <!-- End .shortDetails -->

                                                                                <!-- long details -->
                                                                                <div class="longDetails hidden">

                                                                                    <ul>
                                                                                        <!-- detail -->
                                                                                        <li class="detailList">
                                                                                            <h3>Details</h3>
                                                                                            <dl>
                                                                                                <dt>Status :</dt>
                                                                                                <dd><strong class="${issue.issueStatusClass}"><c:out value="${issue.statusName}"/></strong></dd>
                                                                                                <dt>Resolution :</dt>
                                                                                                <dd><c:out value="${issue.resolutionName}"/></dd>
                                                                                            </dl>
                                                                                        </li>
                                                                                        <!-- End detail -->

                                                                                        <!-- people -->
                                                                                        <li class="peopleList">
                                                                                            <h3>People</h3>
                                                                                            <dl>
                                                                                                <dt>Reporter :</dt>
                                                                                                <dd>
                                                                                                    <a href="${issue.reporterProfile}"
                                                                                                       target="_blank"><c:out value="${issue.reporter}"/></a>
                                                                                                </dd>
                                                                                                <dt>Assignee :</dt>
                                                                                                <dd>
                                                                                                    <c:choose>
                                                                                                        <c:when test="${issue.assignee == 'Unassigned'}">
                                                                                                            Unassigned
                                                                                                        </c:when>
                                                                                                        <c:otherwise>
                                                                                                            <a href="${issue.assigneeProfile}"
                                                                                                               target="_blank"><c:out value="${issue.assignee}"/></a>
                                                                                                        </c:otherwise>
                                                                                                    </c:choose>

                                                                                                </dd>
                                                                                            </dl>
                                                                                        </li>
                                                                                        <!-- End people -->

                                                                                        <!-- dates -->
                                                                                        <li class="datesList">
                                                                                            <h3>Dates</h3>
                                                                                            <dl>
                                                                                            <dt>Created :</dt>
                                                                                            <dd><c:out value="${issue.creationDateString}"/></dd>
                                                                                            <dt>Updated :</dt>
                                                                                            <dd><c:out value="${issue.updateDateString}"/></dd>
                                                                                            <dt>Due :</dt>
                                                                                            <dd><c:out value="${issue.dueDateString}"/></dd>
                                                                                            </dl>
                                                                                        </li>
                                                                                        <!-- End .dates -->
                                                                                    </ul>

                                                                                    <div class="clear"></div>

                                                                                </div>
                                                                                <!-- End .longDetails -->

                                                                            </div>

                                                                            </c:forEach>

                                                                        </div>
                                                                        <!-- End .content -->
                                                                        <div class="clear"></div>

                                                                    </div>
                                                                    <!-- End .issueSelectionContent -->

                                                                </div><!-- End #bankSelection -->

                                                          </div><!-- End .container2Content -->

                                                          <div class="corner bl"></div>
                                                          <div class="corner br"></div>

                                                        </div>
                                                    </div></div></div>
                                                </div>





                                                    </div>
                                                    <!-- End .container2 -->
                    </div>
                </div>
            </div>

        </div>
                                    <!-- End #mainContent -->

                                    <jsp:include page="includes/footer.jsp"/>

    </div>
                                <!-- End #content --></div>
                            <!-- End #container -->

<!-- End #wrapper -->

<jsp:include page="includes/popups.jsp"/>


</body>
<!-- End #page -->

</html>
