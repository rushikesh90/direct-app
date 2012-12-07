<%--
  - Author: TCSASSEMBER
  - Version: 1.1
  -
  - Version: 1.0 (Release Assembly - TopCoder Security Groups Frontend - Miscellaneous)
  - Copyright (C) 2012 TopCoder Inc., All Rights Reserved.
  -
  - Changes:
  - Version 1.1 (Release Assembly - TopCoder Security Groups Release 3) changes:
  -   updated to fixed the bugs in this assembly.
  -
  - This jsp file of search user dialogs, it's statically included in other group security pages.
--%>

<!-- #searchModal -->
<div id="searchModal" class="outLay">
    <div class="modalHeader">
        <div class="modalHeaderRight">
            <div class="modalHeaderCenter">
                Search User Handle
                <a href="javascript:;" class="closeModal" title="Close">Close</a>
            </div>
        </div>
    </div>
    <!-- end .modalHeader -->
    
    <div class="modalBody">
        <div class="searchInputDiv">
            <label>Handle Name:</label>
            <input type="text" class="text" value="Name" id="handle" />
            <div class="handleInputError">Please input the handle name</div>
        </div>
        
        <div class="modalCommandBox">
            <a href="javascript:;" id="searchUser" class="newButton1 searchButton" rel="#searchListModal"><span class="btnR"><span class="btnC">SEARCH</span></span></a>
            <a href="javascript:;" class="newButton1 newButtonGray closeModal"><span class="btnR"><span class="btnC">CANCEL</span></span></a>
        </div>
    </div>
    <!-- end .modalBody -->
    
    <div class="modalFooter">
        <div class="modalFooterRight">
            <div class="modalFooterCenter"></div>
        </div>
    </div>
    <!-- end .modalFooter -->
</div>
<!-- end #searchModal -->

<!-- #searchListModal -->
<div id="searchListModal" class="outLay">
    <div class="modalHeader">
        <div class="modalHeaderRight">
            <div class="modalHeaderCenter">
                Search User Handle
                <a href="javascript:;" class="closeModal" title="Close">Close</a>
            </div>
        </div>
    </div>
    <!-- end .modalHeader -->
    
    <div class="modalBody">
        <div class="searchListDiv">
            <p>10 User Handles Found:</p>
            <table border="0" cellpadding="0" cellspacing="0">
                <colgroup>
                    <col width="30" />
                    <col width="316" />
                </colgroup>
                <tbody>
                    
                </tbody>
            </table>
            <div class="handleSelectError">Please select a handle</div>
        </div>
        
        <div class="modalCommandBox">
            <a href="javascript:;" class="newButton1 searchButton" id="addUser"><span class="btnR"><span class="btnC"><s:if test="#request.CURRENT_TAB=='createAdministrator'">SELECT USER</s:if><s:else>ADD USER TO GROUP</s:else></span></span></a>
            <a href="javascript:;" class="newButton1 searchButton triggerNoPreloaderModal" rel="#searchModal"><span class="btnR"><span class="btnC">SEARCH AGAIN</span></span></a>
            <a href="javascript:;" class="newButton1 newButtonGray closeModal"><span class="btnR"><span class="btnC">CANCEL</span></span></a>
        </div>
    </div>
    <!-- end .modalBody -->
    
    <div class="modalFooter">
        <div class="modalFooterRight">
            <div class="modalFooterCenter"></div>
        </div>
    </div>
    <!-- end .modalFooter -->
</div>
<!-- end #searchListModal -->
<!-- ajax sending invitation mail modal -->
<div class="outLay" id="sendInvitationModal" style="display: none;">
    <div class="modalHeaderSmall">
        <div class="modalHeaderSmallRight">
            <div class="modalHeaderSmallCenter"></div>
        </div>
    </div>
    <div class="modalBody">
        <div class="preloaderTips">Sending invitation email(s)... please wait, this may take a while.</div>
    </div>
    <div class="modalFooter">
        <div class="modalFooterRight">
            <div class="modalFooterCenter">
                <div class="&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;"></div>
            </div>
        </div>
    </div>
</div>
<!-- end ajax sending invitation mail modal -->