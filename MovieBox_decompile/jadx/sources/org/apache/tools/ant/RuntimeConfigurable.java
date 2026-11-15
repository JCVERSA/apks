package org.apache.tools.ant;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import org.xml.sax.AttributeList;
import org.xml.sax.helpers.AttributeListImpl;

public class RuntimeConfigurable implements Serializable {
    private static final Hashtable EMPTY_HASHTABLE = new Hashtable(0);
    private transient AttributeList attributes;
    private transient o.d creator;
    private String elementTag = null;
    private List children = null;
    private transient Object wrappedObject = null;
    private List attributeNames = null;
    private Map attributeMap = null;
    private StringBuffer characters = null;
    private boolean proxyConfigured = false;
    private String polyType = null;

    private String f68063id = null;

    public RuntimeConfigurable(Object obj, String str) {
        setProxy(obj);
        setElementTag(str);
        if (obj instanceof u) {
            ((u) obj).r(this);
        }
    }

    public synchronized void addChild(RuntimeConfigurable runtimeConfigurable) {
        try {
            List arrayList = this.children;
            if (arrayList == null) {
                arrayList = new ArrayList();
            }
            this.children = arrayList;
            arrayList.add(runtimeConfigurable);
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void addText(String str) {
        try {
            if (str.length() == 0) {
                return;
            }
            StringBuffer stringBuffer = this.characters;
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer(str);
            } else {
                stringBuffer.append(str);
            }
            this.characters = stringBuffer;
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public void applyPreSet(RuntimeConfigurable runtimeConfigurable) {
        Map map = runtimeConfigurable.attributeMap;
        if (map != null) {
            for (String str : map.keySet()) {
                Map map2 = this.attributeMap;
                if (map2 == null || map2.get(str) == null) {
                    setAttribute(str, (String) runtimeConfigurable.attributeMap.get(str));
                }
            }
        }
        String str2 = this.polyType;
        if (str2 == null) {
            str2 = runtimeConfigurable.polyType;
        }
        this.polyType = str2;
        if (runtimeConfigurable.children != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.addAll(runtimeConfigurable.children);
            List list = this.children;
            if (list != null) {
                arrayList.addAll(list);
            }
            this.children = arrayList;
        }
        if (runtimeConfigurable.characters != null) {
            StringBuffer stringBuffer = this.characters;
            if (stringBuffer == null || stringBuffer.toString().trim().length() == 0) {
                this.characters = new StringBuffer(runtimeConfigurable.characters.toString());
            }
        }
    }

    public synchronized Hashtable getAttributeMap() {
        try {
        } catch (Throwable th2) {
            throw th2;
        }
        return this.attributeMap == null ? EMPTY_HASHTABLE : new Hashtable(this.attributeMap);
    }

    public synchronized AttributeList getAttributes() {
        return this.attributes;
    }

    synchronized RuntimeConfigurable getChild(int i10) {
        return (RuntimeConfigurable) this.children.get(i10);
    }

    public synchronized Enumeration getChildren() {
        List list;
        try {
            list = this.children;
        } catch (Throwable th2) {
            throw th2;
        }
        return list == null ? new org.apache.tools.ant.util.b.C0836b() : Collections.enumeration(list);
    }

    public synchronized String getElementTag() {
        return this.elementTag;
    }

    public synchronized String getId() {
        return this.f68063id;
    }

    public synchronized String getPolyType() {
        return this.polyType;
    }

    public synchronized Object getProxy() {
        return this.wrappedObject;
    }

    public synchronized StringBuffer getText() {
        StringBuffer stringBuffer;
        stringBuffer = this.characters;
        if (stringBuffer == null) {
            stringBuffer = new StringBuffer(0);
        }
        return stringBuffer;
    }

    public void maybeConfigure(Project project) throws BuildException {
        maybeConfigure(project, true);
    }

    public void reconfigure(Project project) {
        this.proxyConfigured = false;
        maybeConfigure(project);
    }

    public synchronized void removeAttribute(String str) {
        this.attributeNames.remove(str);
        this.attributeMap.remove(str);
    }

    public synchronized void setAttribute(String str, String str2) {
        try {
            if (str.equalsIgnoreCase("ant-type")) {
                this.polyType = str2;
            } else {
                if (this.attributeNames == null) {
                    this.attributeNames = new ArrayList();
                    this.attributeMap = new HashMap();
                }
                if (str.toLowerCase(Locale.US).equals("refid")) {
                    this.attributeNames.add(0, str);
                } else {
                    this.attributeNames.add(str);
                }
                this.attributeMap.put(str, str2);
                if (str.equals("id")) {
                    this.f68063id = str2;
                }
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public synchronized void setAttributes(AttributeList attributeList) {
        this.attributes = new AttributeListImpl(attributeList);
        for (int i10 = 0; i10 < attributeList.getLength(); i10++) {
            setAttribute(attributeList.getName(i10), attributeList.getValue(i10));
        }
    }

    synchronized void setCreator(o.d dVar) {
        this.creator = dVar;
    }

    public synchronized void setElementTag(String str) {
        this.elementTag = str;
    }

    public synchronized void setPolyType(String str) {
        this.polyType = str;
    }

    public synchronized void setProxy(Object obj) {
        this.wrappedObject = obj;
        this.proxyConfigured = false;
    }

    public synchronized void maybeConfigure(Project project, boolean z10) throws BuildException {
        if (this.proxyConfigured) {
            return;
        }
        Object obj = this.wrappedObject;
        o oVarK = o.k(project, obj.getClass());
        if (this.attributeNames != null) {
            for (int i10 = 0; i10 < this.attributeNames.size(); i10++) {
                String str = (String) this.attributeNames.get(i10);
                try {
                    try {
                        oVarK.r(project, obj, str, project.C((String) this.attributeMap.get(str)));
                    } catch (BuildException e10) {
                        if (!str.equals("id")) {
                            throw e10;
                        }
                    }
                } catch (UnsupportedAttributeException e11) {
                    if (!str.equals("id")) {
                        if (getElementTag() == null) {
                            throw e11;
                        }
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append(getElementTag());
                        stringBuffer.append(" doesn't support the \"");
                        stringBuffer.append(e11.getAttribute());
                        stringBuffer.append("\" attribute");
                        throw new BuildException(stringBuffer.toString(), e11);
                    }
                }
            }
        }
        StringBuffer stringBuffer2 = this.characters;
        if (stringBuffer2 != null) {
            r.b(project, this.wrappedObject, stringBuffer2.substring(0));
        }
        String str2 = this.f68063id;
        if (str2 != null) {
            project.d(str2, this.wrappedObject);
        }
        this.proxyConfigured = true;
    }

    public synchronized void addText(char[] cArr, int i10, int i11) {
        if (i11 == 0) {
            return;
        }
        try {
            StringBuffer stringBuffer = this.characters;
            if (stringBuffer == null) {
                stringBuffer = new StringBuffer(i11);
            }
            stringBuffer.append(cArr, i10, i11);
            this.characters = stringBuffer;
        } catch (Throwable th2) {
            throw th2;
        }
    }
}
