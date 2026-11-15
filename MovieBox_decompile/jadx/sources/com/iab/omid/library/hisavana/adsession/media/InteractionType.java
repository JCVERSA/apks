package com.iab.omid.library.hisavana.adsession.media;

public enum InteractionType {
    CLICK("click"),
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
