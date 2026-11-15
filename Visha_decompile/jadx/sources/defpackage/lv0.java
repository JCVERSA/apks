package defpackage;

import freemarker.ext.dom.d;
import org.w3c.dom.CharacterData;
import org.w3c.dom.Comment;

public class lv0 extends d implements mga {
    public lv0(CharacterData characterData) {
        super(characterData);
    }

    @Override
    public String d() {
        return this.b instanceof Comment ? "@comment" : "@text";
    }

    @Override
    public String getAsString() {
        return ((CharacterData) this.b).getData();
    }

    @Override
    public boolean isEmpty() {
        return true;
    }
}
