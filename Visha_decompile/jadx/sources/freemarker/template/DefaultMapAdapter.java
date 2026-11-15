package freemarker.template;

import defpackage.bfa;
import defpackage.c8;
import defpackage.dga;
import defpackage.gc7;
import defpackage.ic7;
import defpackage.k0d;
import defpackage.lpc;
import defpackage.npc;
import defpackage.pfa;
import defpackage.zfa;
import freemarker.core._TemplateModelException;
import java.io.Serializable;
import java.util.Map;
import java.util.SortedMap;

public class DefaultMapAdapter extends npc implements pfa, c8, lpc, dga, Serializable {
    private final Map map;

    private DefaultMapAdapter(Map map, gc7 gc7Var) {
        super(gc7Var);
        this.map = map;
    }

    public static DefaultMapAdapter adapt(Map map, ic7 ic7Var) {
        return new DefaultMapAdapter(map, ic7Var);
    }

    @Override
    public zfa get(String str) throws TemplateModelException {
        try {
            Object obj = this.map.get(str);
            if (obj == null) {
                if (str.length() != 1 || (this.map instanceof SortedMap)) {
                    zfa zfaVarWrap = wrap(null);
                    if (zfaVarWrap == null || !this.map.containsKey(str)) {
                        return null;
                    }
                    return zfaVarWrap;
                }
                Character ch = new Character(str.charAt(0));
                try {
                    Object obj2 = this.map.get(ch);
                    if (obj2 == null) {
                        zfa zfaVarWrap2 = wrap(null);
                        if (zfaVarWrap2 == null || !(this.map.containsKey(str) || this.map.containsKey(ch))) {
                            return null;
                        }
                        return zfaVarWrap2;
                    }
                    obj = obj2;
                } catch (ClassCastException e) {
                    throw new _TemplateModelException(e, new Object[]{"Class casting exception while getting Map entry with Character key ", new k0d(ch)});
                } catch (NullPointerException e2) {
                    throw new _TemplateModelException(e2, new Object[]{"NullPointerException while getting Map entry with Character key ", new k0d(ch)});
                }
            }
            return wrap(obj);
        } catch (ClassCastException e3) {
            throw new _TemplateModelException(e3, new Object[]{"ClassCastException while getting Map entry with String key ", new k0d(str)});
        } catch (NullPointerException e4) {
            throw new _TemplateModelException(e4, new Object[]{"NullPointerException while getting Map entry with String key ", new k0d(str)});
        }
    }

    @Override
    public zfa getAPI() throws TemplateModelException {
        return ((ic7) getObjectWrapper()).a(this.map);
    }

    @Override
    public Object getAdaptedObject(Class cls) {
        return this.map;
    }

    @Override
    public Object getWrappedObject() {
        return this.map;
    }

    @Override
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override
    public bfa keys() {
        return new SimpleCollection(this.map.keySet(), getObjectWrapper());
    }

    @Override
    public int size() {
        return this.map.size();
    }

    @Override
    public bfa values() {
        return new SimpleCollection(this.map.values(), getObjectWrapper());
    }
}
