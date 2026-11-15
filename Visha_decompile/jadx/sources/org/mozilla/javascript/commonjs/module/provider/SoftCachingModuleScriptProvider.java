package org.mozilla.javascript.commonjs.module.provider;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.net.URI;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.Script;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.commonjs.module.ModuleScript;

public class SoftCachingModuleScriptProvider extends CachingModuleScriptProviderBase {
    private static final long serialVersionUID = 1;
    private transient ReferenceQueue<Script> scriptRefQueue;
    private transient ConcurrentMap<String, a> scripts;

    public static class a extends SoftReference {
        public final String a;
        public final URI b;
        public final URI c;
        public final Object d;

        public a(Script script, String str, URI uri, URI uri2, Object obj, ReferenceQueue referenceQueue) {
            super(script, referenceQueue);
            this.a = str;
            this.b = uri;
            this.c = uri2;
            this.d = obj;
        }

        public CachingModuleScriptProviderBase.CachedModuleScript a() {
            Script script = (Script) get();
            if (script == null) {
                return null;
            }
            return new CachingModuleScriptProviderBase.CachedModuleScript(new ModuleScript(script, this.b, this.c), this.d);
        }

        public String b() {
            return this.a;
        }
    }

    public SoftCachingModuleScriptProvider(ModuleSourceProvider moduleSourceProvider) {
        super(moduleSourceProvider);
        this.scriptRefQueue = new ReferenceQueue<>();
        this.scripts = new ConcurrentHashMap(16, 0.75f, CachingModuleScriptProviderBase.getConcurrencyLevel());
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.scriptRefQueue = new ReferenceQueue<>();
        this.scripts = new ConcurrentHashMap();
        for (Map.Entry entry : ((Map) objectInputStream.readObject()).entrySet()) {
            CachingModuleScriptProviderBase.CachedModuleScript cachedModuleScript = (CachingModuleScriptProviderBase.CachedModuleScript) entry.getValue();
            putLoadedModule((String) entry.getKey(), cachedModuleScript.getModule(), cachedModuleScript.getValidator());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        HashMap map = new HashMap();
        for (Map.Entry<String, a> entry : this.scripts.entrySet()) {
            CachingModuleScriptProviderBase.CachedModuleScript cachedModuleScriptA = entry.getValue().a();
            if (cachedModuleScriptA != null) {
                map.put(entry.getKey(), cachedModuleScriptA);
            }
        }
        objectOutputStream.writeObject(map);
    }

    @Override
    public CachingModuleScriptProviderBase.CachedModuleScript getLoadedModule(String str) {
        a aVar = this.scripts.get(str);
        if (aVar != null) {
            return aVar.a();
        }
        return null;
    }

    @Override
    public ModuleScript getModuleScript(Context context, String str, URI uri, URI uri2, Scriptable scriptable) throws Exception {
        while (true) {
            a aVar = (a) this.scriptRefQueue.poll();
            if (aVar == null) {
                return super.getModuleScript(context, str, uri, uri2, scriptable);
            }
            this.scripts.remove(aVar.b(), aVar);
        }
    }

    @Override
    public void putLoadedModule(String str, ModuleScript moduleScript, Object obj) {
        this.scripts.put(str, new a(moduleScript.getScript(), str, moduleScript.getUri(), moduleScript.getBase(), obj, this.scriptRefQueue));
    }
}
