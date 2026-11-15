package org.mvel2.ast;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.mvel2.CompileException;
import org.mvel2.ParserContext;
import org.mvel2.UnresolveablePropertyException;
import org.mvel2.compiler.ExecutableStatement;
import org.mvel2.integration.VariableResolver;
import org.mvel2.integration.VariableResolverFactory;
import org.mvel2.integration.impl.MapVariableResolverFactory;
import org.mvel2.integration.impl.SimpleValueResolver;
import org.mvel2.util.q;

public class Proto extends ASTNode {
    private int cursorEnd;
    private int cursorStart;
    private String name;
    private Map<String, c> receivers;

    public enum ReceiverType {
        DEFERRED,
        FUNCTION,
        PROPERTY
    }

    static class a {

        static final int[] f68776a;

        static {
            int[] iArr = new int[ReceiverType.values().length];
            f68776a = iArr;
            try {
                iArr[ReceiverType.FUNCTION.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f68776a[ReceiverType.PROPERTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f68776a[ReceiverType.DEFERRED.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public Proto(String str, ParserContext parserContext) {
        super(parserContext);
        this.name = str;
        this.receivers = new q();
    }

    public c declareReceiver(String str, Function function) {
        c cVar = new c((b) null, ReceiverType.FUNCTION, function);
        this.receivers.put(str, cVar);
        return cVar;
    }

    public int getCursorEnd() {
        return this.cursorEnd;
    }

    public int getCursorStart() {
        return this.cursorStart;
    }

    @Override
    public String getName() {
        return this.name;
    }

    @Override
    public Object getReducedValue(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createVariable(this.name, this);
        return this;
    }

    @Override
    public Object getReducedValueAccelerated(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        variableResolverFactory.createVariable(this.name, this);
        return this;
    }

    public b newInstance(Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
        return new b(this, obj, obj2, variableResolverFactory);
    }

    public void setCursorPosition(int i10, int i11) {
        this.cursorStart = i10;
        this.cursorEnd = i11;
    }

    @Override
    public String toString() {
        return "proto " + this.name;
    }

    public class ProtoContextFactory extends MapVariableResolverFactory {
        private final q variableResolvers;

        public ProtoContextFactory(q qVar) {
            super(qVar);
            this.variableResolvers = new q(qVar, true);
        }

        @Override
        public VariableResolver createIndexedVariable(int i10, String str, Object obj, Class<?> cls) {
            q qVar = this.variableResolvers;
            VariableResolver variableResolver = qVar != null ? (VariableResolver) qVar.a(i10) : null;
            if (variableResolver == null || variableResolver.getType() == null) {
                return createIndexedVariable(variableIndexOf(str), str, obj);
            }
            String str2 = "variable already defined within scope: " + variableResolver.getType() + " " + str;
            Proto proto = Proto.this;
            throw new CompileException(str2, proto.expr, proto.start);
        }

        @Override
        public VariableResolver createVariable(String str, Object obj) {
            try {
                VariableResolver variableResolver = getVariableResolver(str);
                variableResolver.setValue(obj);
                return variableResolver;
            } catch (UnresolveablePropertyException unused) {
                ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str);
                addResolver(str, protoResolver).setValue(obj);
                return protoResolver;
            }
        }

        @Override
        public String[] getIndexedVariableNames() {
            return null;
        }

        @Override
        public VariableResolver getIndexedVariableResolver(int i10) {
            return (VariableResolver) this.variableResolvers.a(i10);
        }

        @Override
        public VariableResolver getVariableResolver(String str) {
            VariableResolver variableResolver = (VariableResolver) this.variableResolvers.get(str);
            if (variableResolver != null) {
                return variableResolver;
            }
            if (this.variables.containsKey(str)) {
                q qVar = this.variableResolvers;
                ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str);
                qVar.put(str, protoResolver);
                return protoResolver;
            }
            VariableResolverFactory variableResolverFactory = this.nextFactory;
            if (variableResolverFactory != null) {
                return variableResolverFactory.getVariableResolver(str);
            }
            throw new UnresolveablePropertyException("unable to resolve variable '" + str + "'");
        }

        @Override
        public VariableResolver setIndexedVariableResolver(int i10, VariableResolver variableResolver) {
            this.variableResolvers.d(i10, variableResolver);
            return variableResolver;
        }

        @Override
        public int variableIndexOf(String str) {
            return this.variableResolvers.c(str);
        }

        @Override
        public VariableResolver createVariable(String str, Object obj, Class<?> cls) {
            VariableResolver variableResolver;
            try {
                variableResolver = getVariableResolver(str);
            } catch (UnresolveablePropertyException unused) {
                variableResolver = null;
            }
            if (variableResolver != null && variableResolver.getType() != null) {
                String str2 = "variable already defined within scope: " + variableResolver.getType() + " " + str;
                Proto proto = Proto.this;
                throw new CompileException(str2, proto.expr, proto.start);
            }
            ProtoResolver protoResolver = Proto.this.new ProtoResolver(this.variables, str, cls);
            addResolver(str, protoResolver).setValue(obj);
            return protoResolver;
        }

        @Override
        public VariableResolver createIndexedVariable(int i10, String str, Object obj) {
            VariableResolver variableResolver = (VariableResolver) this.variableResolvers.a(i10);
            if (variableResolver == null) {
                this.variableResolvers.d(i10, new SimpleValueResolver(obj));
            } else {
                variableResolver.setValue(obj);
            }
            return this.indexedVariableResolvers[i10];
        }

        @Override
        public void setIndexedVariableNames(String[] strArr) {
        }
    }

    public class ProtoResolver implements VariableResolver {
        private Class<?> knownType;
        private String name;
        private Map<String, Object> variableMap;

        public ProtoResolver(Map<String, Object> map, String str) {
            this.variableMap = map;
            this.name = str;
        }

        @Override
        public int getFlags() {
            return 0;
        }

        @Override
        public String getName() {
            return this.name;
        }

        @Override
        public Class getType() {
            return this.knownType;
        }

        @Override
        public Object getValue() {
            return ((c) this.variableMap.get(this.name)).f68782b;
        }

        public void setName(String str) {
            this.name = str;
        }

        @Override
        public void setStaticType(Class cls) {
            this.knownType = cls;
        }

        @Override
        public void setValue(Object obj) {
            if (this.knownType != null && obj != null) {
                Class<?> cls = obj.getClass();
                Class<?> cls2 = this.knownType;
                if (cls != cls2) {
                    if (!org.mvel2.b.a(cls2, obj.getClass())) {
                        String str = "cannot assign " + obj.getClass().getName() + " to type: " + this.knownType.getName();
                        Proto proto = Proto.this;
                        throw new CompileException(str, proto.expr, proto.start);
                    }
                    try {
                        obj = org.mvel2.b.b(obj, this.knownType);
                    } catch (Exception unused) {
                        String str2 = "cannot convert value of " + obj.getClass().getName() + " to: " + this.knownType.getName();
                        Proto proto2 = Proto.this;
                        throw new CompileException(str2, proto2.expr, proto2.start);
                    }
                }
            }
            ((c) this.variableMap.get(this.name)).f68782b = obj;
        }

        public ProtoResolver(Map<String, Object> map, String str, Class cls) {
            this.name = str;
            this.knownType = cls;
            this.variableMap = map;
        }
    }

    public c declareReceiver(String str, Class cls, ExecutableStatement executableStatement) {
        c cVar = new c((b) null, ReceiverType.PROPERTY, executableStatement);
        this.receivers.put(str, cVar);
        return cVar;
    }

    public class c {

        private ReceiverType f68781a;

        private Object f68782b;

        private ExecutableStatement f68783c;

        private b f68784d;

        public c(b bVar, ReceiverType receiverType, Object obj) {
            this.f68784d = bVar;
            this.f68781a = receiverType;
            this.f68782b = obj;
        }

        public Object c(Object obj, Object obj2, VariableResolverFactory variableResolverFactory, Object[] objArr) {
            int i10 = a.f68776a[this.f68781a.ordinal()];
            if (i10 == 1) {
                return ((Function) this.f68782b).call(obj, obj2, new InvokationContextFactory(variableResolverFactory, this.f68784d.f68778b), objArr);
            }
            if (i10 == 2) {
                return this.f68782b;
            }
            if (i10 != 3) {
                return null;
            }
            Proto proto = Proto.this;
            throw new CompileException("unresolved prototype receiver", proto.expr, proto.start);
        }

        public c d(b bVar, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            ExecutableStatement executableStatement;
            Proto proto = Proto.this;
            ReceiverType receiverType = this.f68781a;
            return proto.new c(bVar, receiverType, (receiverType != ReceiverType.PROPERTY || (executableStatement = this.f68783c) == null) ? this.f68782b : executableStatement.getValue(obj, obj2, variableResolverFactory));
        }

        public void e(ExecutableStatement executableStatement) {
            this.f68783c = executableStatement;
        }

        public void f(ReceiverType receiverType) {
            this.f68781a = receiverType;
        }

        public c(b bVar, ReceiverType receiverType, ExecutableStatement executableStatement) {
            this.f68784d = bVar;
            this.f68781a = receiverType;
            this.f68783c = executableStatement;
        }
    }

    public c declareReceiver(String str, ReceiverType receiverType, ExecutableStatement executableStatement) {
        c cVar = new c((b) null, receiverType, executableStatement);
        this.receivers.put(str, cVar);
        return cVar;
    }

    public class b implements Map {

        private Proto f68777a;

        private VariableResolverFactory f68778b;

        private q f68779c = new q();

        public b(Proto proto, Object obj, Object obj2, VariableResolverFactory variableResolverFactory) {
            this.f68777a = proto;
            for (Map.Entry entry : proto.receivers.entrySet()) {
                this.f68779c.put(entry.getKey(), ((c) entry.getValue()).d(this, obj, obj2, variableResolverFactory));
            }
            this.f68778b = Proto.this.new ProtoContextFactory(this.f68779c);
        }

        @Override
        public c get(Object obj) {
            return (c) this.f68779c.get(obj);
        }

        @Override
        public boolean containsKey(Object obj) {
            return this.f68779c.containsKey(obj);
        }

        @Override
        public boolean containsValue(Object obj) {
            return this.f68779c.containsValue(obj);
        }

        @Override
        public c put(String str, c cVar) {
            return (c) this.f68779c.put(str, cVar);
        }

        @Override
        public c remove(Object obj) {
            return (c) this.f68779c.remove(obj);
        }

        @Override
        public Set entrySet() {
            return this.f68779c.entrySet();
        }

        @Override
        public boolean isEmpty() {
            return this.f68779c.isEmpty();
        }

        @Override
        public Set keySet() {
            return this.f68779c.keySet();
        }

        @Override
        public int size() {
            return this.f68779c.size();
        }

        @Override
        public Collection values() {
            return this.f68779c.values();
        }

        @Override
        public void clear() {
        }

        @Override
        public void putAll(Map map) {
        }
    }
}
