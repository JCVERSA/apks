package org.mozilla.javascript;

import androidx.media3.exoplayer.rtsp.SessionDescription;

public class IdFunctionObjectES6 extends IdFunctionObject {
    private static final int Id_length = 1;
    private static final int Id_name = 3;
    private static final long serialVersionUID = -8023088662589035261L;
    private boolean myLength;
    private boolean myName;

    public IdFunctionObjectES6(IdFunctionCall idFunctionCall, Object obj, int i, String str, int i2, Scriptable scriptable) {
        super(idFunctionCall, obj, i, str, i2, scriptable);
        this.myLength = true;
        this.myName = true;
    }

    @Override
    public int findInstanceIdInfo(String str) {
        if (str.equals(SessionDescription.ATTR_LENGTH)) {
            return IdScriptableObject.instanceIdInfo(3, 1);
        }
        return str.equals("name") ? IdScriptableObject.instanceIdInfo(3, 3) : super.findInstanceIdInfo(str);
    }

    @Override
    public Object getInstanceIdValue(int i) {
        if (i != 1 || this.myLength) {
            return (i != 3 || this.myName) ? super.getInstanceIdValue(i) : Scriptable.NOT_FOUND;
        }
        return Scriptable.NOT_FOUND;
    }

    @Override
    public void setInstanceIdValue(int i, Object obj) {
        if (i == 1 && obj == Scriptable.NOT_FOUND) {
            this.myLength = false;
        } else if (i == 3 && obj == Scriptable.NOT_FOUND) {
            this.myName = false;
        } else {
            super.setInstanceIdValue(i, obj);
        }
    }
}
