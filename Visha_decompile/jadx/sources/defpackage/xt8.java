package defpackage;

import freemarker.core._TemplateModelException;
import freemarker.ext.beans.b;
import freemarker.template.TemplateModelException;
import java.text.MessageFormat;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.MissingResourceException;
import java.util.ResourceBundle;
import java.util.Set;

public class xt8 extends rd0 implements yfa {
    public static final fq6 i = new wt8();
    public Hashtable h;

    public xt8(ResourceBundle resourceBundle, b bVar) {
        super(resourceBundle, bVar);
        this.h = null;
    }

    @Override
    public zfa c(Map map, Class cls, String str) throws _TemplateModelException {
        try {
            return o(((ResourceBundle) this.b).getObject(str));
        } catch (MissingResourceException e) {
            throw new _TemplateModelException(e, new Object[]{"No ", new k0d(str), " key in the ResourceBundle. Note that conforming to the ResourceBundle Java API, this is an error and not just a missing sub-variable (a null)."});
        }
    }

    @Override
    public Object exec(List list) throws TemplateModelException {
        if (list.size() < 1) {
            throw new TemplateModelException("No message key was specified");
        }
        Iterator it = list.iterator();
        String string = n((zfa) it.next()).toString();
        try {
            if (!it.hasNext()) {
                return o(((ResourceBundle) this.b).getObject(string));
            }
            int size = list.size() - 1;
            Object[] objArr = new Object[size];
            for (int i2 = 0; i2 < size; i2++) {
                objArr[i2] = n((zfa) it.next());
            }
            return new yz9(p(string, objArr), this.c);
        } catch (MissingResourceException unused) {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("No such key: ");
            stringBuffer.append(string);
            throw new TemplateModelException(stringBuffer.toString());
        } catch (Exception e) {
            throw new TemplateModelException(e.getMessage());
        }
    }

    @Override
    public boolean isEmpty() {
        return !((ResourceBundle) this.b).getKeys().hasMoreElements() && super.isEmpty();
    }

    @Override
    public Set l() {
        Set setL = super.l();
        Enumeration<String> keys = ((ResourceBundle) this.b).getKeys();
        while (keys.hasMoreElements()) {
            setL.add(keys.nextElement());
        }
        return setL;
    }

    public String p(String str, Object[] objArr) {
        String str2;
        if (this.h == null) {
            this.h = new Hashtable();
        }
        MessageFormat messageFormat = (MessageFormat) this.h.get(str);
        if (messageFormat == null) {
            messageFormat = new MessageFormat(((ResourceBundle) this.b).getString(str));
            messageFormat.setLocale(q().getLocale());
            this.h.put(str, messageFormat);
        }
        synchronized (messageFormat) {
            str2 = messageFormat.format(objArr);
        }
        return str2;
    }

    public ResourceBundle q() {
        return (ResourceBundle) this.b;
    }

    @Override
    public int size() {
        return l().size();
    }
}
