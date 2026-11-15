package com.iab.omid.library.hisavana.adsession.media;

import com.transsion.push.PushConstants;

public enum InteractionType {
    CLICK(PushConstants.PUSH_SERVICE_TYPE_CLICK),
    INVITATION_ACCEPTED("invitationAccept");

    String interactionType;

    InteractionType(String str) {
        this.interactionType = str;
    }

    @Override
    public String toString() {
        return this.interactionType;
    }
}
