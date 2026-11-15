package com.transsion.dbdata.beans.media;

import com.transsion.dbdata.beans.appconfig.JumpBean;

public class JumpMediaItem extends MediaItem {
    private JumpBean.JumpInfo jumpBean;

    public JumpBean.JumpInfo getJumpBean() {
        return this.jumpBean;
    }

    public void setJumpBean(JumpBean.JumpInfo jumpInfo) {
        this.jumpBean = jumpInfo;
    }
}
