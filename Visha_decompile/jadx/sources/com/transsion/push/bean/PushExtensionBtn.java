package com.transsion.push.bean;

import com.transsion.livecaption.constant.ICode;
import defpackage.pab;

public class PushExtensionBtn {

    @pab(name = ICode.CALL.CALL_KEY_CONTENT)
    public String content;

    @pab(name = "txt")
    public String txt;

    @pab(name = "type")
    public int type;
}
