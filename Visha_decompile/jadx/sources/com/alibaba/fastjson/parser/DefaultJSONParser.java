package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.JSONPath;
import com.alibaba.fastjson.JSONPathException;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessable;
import com.alibaba.fastjson.parser.deserializer.ExtraProcessor;
import com.alibaba.fastjson.parser.deserializer.ExtraTypeProvider;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.FieldTypeResolver;
import com.alibaba.fastjson.parser.deserializer.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.deserializer.MapDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.parser.deserializer.PropertyProcessable;
import com.alibaba.fastjson.parser.deserializer.ResolveFieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ThrowableDeserializer;
import com.alibaba.fastjson.serializer.BeanContext;
import com.alibaba.fastjson.serializer.IntegerCodec;
import com.alibaba.fastjson.serializer.LongCodec;
import com.alibaba.fastjson.serializer.SerializeConfig;
import com.alibaba.fastjson.serializer.StringCodec;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.Closeable;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import org.apache.commons.lang3.CharUtils;
import org.proninyaroslav.libretorrent.core.model.filetree.FileTree;

public class DefaultJSONParser implements Closeable {
    public static final int NONE = 0;
    public static final int NeedToResolve = 1;
    public static final int TypeNameRedirect = 2;
    private static final Set<Class<?>> primitiveClasses;
    private String[] autoTypeAccept;
    private boolean autoTypeEnable;
    protected ParserConfig config;
    protected ParseContext context;
    private ParseContext[] contextArray;
    private int contextArrayIndex;
    private DateFormat dateFormat;
    private String dateFormatPattern;
    private List<ExtraProcessor> extraProcessors;
    private List<ExtraTypeProvider> extraTypeProviders;
    protected FieldTypeResolver fieldTypeResolver;
    public final Object input;
    protected transient BeanContext lastBeanContext;
    public final JSONLexer lexer;
    private int objectKeyLevel;
    public int resolveStatus;
    private List<ResolveTask> resolveTaskList;
    public final SymbolTable symbolTable;

    public static class ResolveTask {
        public final ParseContext context;
        public FieldDeserializer fieldDeserializer;
        public ParseContext ownerContext;
        public final String referenceValue;

        public ResolveTask(ParseContext parseContext, String str) {
            this.context = parseContext;
            this.referenceValue = str;
        }
    }

    static {
        HashSet hashSet = new HashSet();
        primitiveClasses = hashSet;
        hashSet.addAll(Arrays.asList(Boolean.TYPE, Byte.TYPE, Short.TYPE, Integer.TYPE, Long.TYPE, Float.TYPE, Double.TYPE, Boolean.class, Byte.class, Short.class, Integer.class, Long.class, Float.class, Double.class, BigInteger.class, BigDecimal.class, String.class));
    }

    public DefaultJSONParser(String str) {
        this(str, ParserConfig.getGlobalInstance(), JSON.DEFAULT_PARSER_FEATURE);
    }

    private void addContext(ParseContext parseContext) {
        int i = this.contextArrayIndex;
        this.contextArrayIndex = i + 1;
        ParseContext[] parseContextArr = this.contextArray;
        if (parseContextArr == null) {
            this.contextArray = new ParseContext[8];
        } else if (i >= parseContextArr.length) {
            ParseContext[] parseContextArr2 = new ParseContext[(parseContextArr.length * 3) / 2];
            System.arraycopy(parseContextArr, 0, parseContextArr2, 0, parseContextArr.length);
            this.contextArray = parseContextArr2;
        }
        this.contextArray[i] = parseContext;
    }

    public final void accept(int i) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken();
            return;
        }
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(jSONLexer.token()));
    }

    public void acceptType(String str) {
        JSONLexer jSONLexer = this.lexer;
        jSONLexer.nextTokenWithColon();
        if (jSONLexer.token() != 4) {
            throw new JSONException("type not match error");
        }
        if (!str.equals(jSONLexer.stringVal())) {
            throw new JSONException("type not match error");
        }
        jSONLexer.nextToken();
        if (jSONLexer.token() == 16) {
            jSONLexer.nextToken();
        }
    }

    public void addResolveTask(ResolveTask resolveTask) {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        this.resolveTaskList.add(resolveTask);
    }

    public void checkListResolve(Collection collection) {
        if (this.resolveStatus == 1) {
            if (!(collection instanceof List)) {
                ResolveTask lastResolveTask = getLastResolveTask();
                lastResolveTask.fieldDeserializer = new ResolveFieldDeserializer(collection);
                lastResolveTask.ownerContext = this.context;
                setResolveStatus(0);
                return;
            }
            int size = collection.size() - 1;
            ResolveTask lastResolveTask2 = getLastResolveTask();
            lastResolveTask2.fieldDeserializer = new ResolveFieldDeserializer(this, (List) collection, size);
            lastResolveTask2.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    public void checkMapResolve(Map map, Object obj) {
        if (this.resolveStatus == 1) {
            ResolveFieldDeserializer resolveFieldDeserializer = new ResolveFieldDeserializer(map, obj);
            ResolveTask lastResolveTask = getLastResolveTask();
            lastResolveTask.fieldDeserializer = resolveFieldDeserializer;
            lastResolveTask.ownerContext = this.context;
            setResolveStatus(0);
        }
    }

    @Override
    public void close() {
        JSONLexer jSONLexer = this.lexer;
        try {
            if (jSONLexer.isEnabled(Feature.AutoCloseSource) && jSONLexer.token() != 20) {
                throw new JSONException("not close json text, token : " + JSONToken.name(jSONLexer.token()));
            }
            jSONLexer.close();
        } catch (Throwable th) {
            jSONLexer.close();
            throw th;
        }
    }

    public void config(Feature feature, boolean z) {
        this.lexer.config(feature, z);
    }

    public ParserConfig getConfig() {
        return this.config;
    }

    public ParseContext getContext() {
        return this.context;
    }

    public String getDateFomartPattern() {
        return this.dateFormatPattern;
    }

    public DateFormat getDateFormat() {
        if (this.dateFormat == null) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(this.dateFormatPattern, this.lexer.getLocale());
            this.dateFormat = simpleDateFormat;
            simpleDateFormat.setTimeZone(this.lexer.getTimeZone());
        }
        return this.dateFormat;
    }

    public List<ExtraProcessor> getExtraProcessors() {
        if (this.extraProcessors == null) {
            this.extraProcessors = new ArrayList(2);
        }
        return this.extraProcessors;
    }

    public List<ExtraTypeProvider> getExtraTypeProviders() {
        if (this.extraTypeProviders == null) {
            this.extraTypeProviders = new ArrayList(2);
        }
        return this.extraTypeProviders;
    }

    public FieldTypeResolver getFieldTypeResolver() {
        return this.fieldTypeResolver;
    }

    public String getInput() {
        Object obj = this.input;
        return obj instanceof char[] ? new String((char[]) obj) : obj.toString();
    }

    public ResolveTask getLastResolveTask() {
        List<ResolveTask> list = this.resolveTaskList;
        return list.get(list.size() - 1);
    }

    public JSONLexer getLexer() {
        return this.lexer;
    }

    public Object getObject(String str) {
        for (int i = 0; i < this.contextArrayIndex; i++) {
            if (str.equals(this.contextArray[i].toString())) {
                return this.contextArray[i].object;
            }
        }
        return null;
    }

    public ParseContext getOwnerContext() {
        return this.context.parent;
    }

    public int getResolveStatus() {
        return this.resolveStatus;
    }

    public List<ResolveTask> getResolveTaskList() {
        if (this.resolveTaskList == null) {
            this.resolveTaskList = new ArrayList(2);
        }
        return this.resolveTaskList;
    }

    public SymbolTable getSymbolTable() {
        return this.symbolTable;
    }

    public void handleResovleTask(Object obj) {
        Object objEval;
        ParseContext parseContext;
        FieldInfo fieldInfo;
        List<ResolveTask> list = this.resolveTaskList;
        if (list == null) {
            return;
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            ResolveTask resolveTask = this.resolveTaskList.get(i);
            String str = resolveTask.referenceValue;
            ParseContext parseContext2 = resolveTask.ownerContext;
            Object obj2 = parseContext2 != null ? parseContext2.object : null;
            if (str.startsWith("$")) {
                objEval = getObject(str);
                if (objEval == null) {
                    try {
                        JSONPath jSONPath = new JSONPath(str, SerializeConfig.getGlobalInstance(), this.config, true);
                        if (jSONPath.isRef()) {
                            objEval = jSONPath.eval(obj);
                        }
                    } catch (JSONPathException unused) {
                    }
                }
            } else {
                objEval = resolveTask.context.object;
            }
            FieldDeserializer fieldDeserializer = resolveTask.fieldDeserializer;
            if (fieldDeserializer != null) {
                if (objEval != null && objEval.getClass() == JSONObject.class && (fieldInfo = fieldDeserializer.fieldInfo) != null && !Map.class.isAssignableFrom(fieldInfo.fieldClass)) {
                    Object obj3 = this.contextArray[0].object;
                    JSONPath jSONPathCompile = JSONPath.compile(str);
                    if (jSONPathCompile.isRef()) {
                        objEval = jSONPathCompile.eval(obj3);
                    }
                }
                if (fieldDeserializer.getOwnerClass() != null && !fieldDeserializer.getOwnerClass().isInstance(obj2) && (parseContext = resolveTask.ownerContext.parent) != null) {
                    for (parseContext = resolveTask.ownerContext.parent; parseContext != null; parseContext = parseContext.parent) {
                        if (fieldDeserializer.getOwnerClass().isInstance(parseContext.object)) {
                            obj2 = parseContext.object;
                            break;
                        }
                    }
                }
                fieldDeserializer.setValue(obj2, objEval);
            }
        }
    }

    public boolean isEnabled(Feature feature) {
        return this.lexer.isEnabled(feature);
    }

    public Object parse() {
        return parse(null);
    }

    public <T> List<T> parseArray(Class<T> cls) {
        ArrayList arrayList = new ArrayList();
        parseArray((Class<?>) cls, (Collection) arrayList);
        return arrayList;
    }

    public Object parseArrayWithType(Type type) {
        if (this.lexer.token() == 8) {
            this.lexer.nextToken();
            return null;
        }
        Type[] actualTypeArguments = ((ParameterizedType) type).getActualTypeArguments();
        if (actualTypeArguments.length != 1) {
            throw new JSONException("not support type " + type);
        }
        Type type2 = actualTypeArguments[0];
        if (type2 instanceof Class) {
            ArrayList arrayList = new ArrayList();
            parseArray((Class<?>) type2, (Collection) arrayList);
            return arrayList;
        }
        if (type2 instanceof WildcardType) {
            WildcardType wildcardType = (WildcardType) type2;
            Type type3 = wildcardType.getUpperBounds()[0];
            if (!Object.class.equals(type3)) {
                ArrayList arrayList2 = new ArrayList();
                parseArray((Class<?>) type3, (Collection) arrayList2);
                return arrayList2;
            }
            if (wildcardType.getLowerBounds().length == 0) {
                return parse();
            }
            throw new JSONException("not support type : " + type);
        }
        if (type2 instanceof TypeVariable) {
            TypeVariable typeVariable = (TypeVariable) type2;
            Type[] bounds = typeVariable.getBounds();
            if (bounds.length != 1) {
                throw new JSONException("not support : " + typeVariable);
            }
            Type type4 = bounds[0];
            if (type4 instanceof Class) {
                ArrayList arrayList3 = new ArrayList();
                parseArray((Class<?>) type4, (Collection) arrayList3);
                return arrayList3;
            }
        }
        if (type2 instanceof ParameterizedType) {
            ArrayList arrayList4 = new ArrayList();
            parseArray((ParameterizedType) type2, arrayList4);
            return arrayList4;
        }
        throw new JSONException("TODO : " + type);
    }

    public void parseExtra(Object obj, String str) {
        this.lexer.nextTokenWithColon();
        List<ExtraTypeProvider> list = this.extraTypeProviders;
        Type extraType = null;
        if (list != null) {
            Iterator<ExtraTypeProvider> it = list.iterator();
            while (it.hasNext()) {
                extraType = it.next().getExtraType(obj, str);
            }
        }
        Object object = extraType == null ? parse() : parseObject(extraType);
        if (obj instanceof ExtraProcessable) {
            ((ExtraProcessable) obj).processExtra(str, object);
            return;
        }
        List<ExtraProcessor> list2 = this.extraProcessors;
        if (list2 != null) {
            Iterator<ExtraProcessor> it2 = list2.iterator();
            while (it2.hasNext()) {
                it2.next().processExtra(obj, str, object);
            }
        }
        if (this.resolveStatus == 1) {
            this.resolveStatus = 0;
        }
    }

    public Object parseKey() {
        if (this.lexer.token() != 18) {
            return parse(null);
        }
        String strStringVal = this.lexer.stringVal();
        this.lexer.nextToken(16);
        return strStringVal;
    }

    /* JADX WARN: Code duplicated, block: B:117:0x0220 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:148:0x02a0 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:151:0x02b5 A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:154:0x02c2 A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:158:0x02ce  */
    /* JADX WARN: Code duplicated, block: B:160:0x02d2 A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:161:0x02d8 A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:163:0x02e0 A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:164:0x02e5 A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:166:0x02ed A[Catch: all -> 0x0081, Exception -> 0x02ca, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:167:0x02f7 A[Catch: all -> 0x0081, Exception -> 0x02ca, TRY_LEAVE, TryCatch #2 {Exception -> 0x02ca, blocks: (B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7), top: B:395:0x02b8, outer: #0 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x0307 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:182:0x0324 A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:185:0x0335 A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:198:0x0364  */
    /* JADX WARN: Code duplicated, block: B:201:0x0369 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:247:0x0419  */
    /* JADX WARN: Code duplicated, block: B:259:0x0474 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:261:0x0478 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:266:0x0482 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:268:0x0488  */
    /* JADX WARN: Code duplicated, block: B:272:0x0493 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:276:0x049b A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:278:0x04aa A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:280:0x04b5 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:283:0x04c4  */
    /* JADX WARN: Code duplicated, block: B:285:0x04c8  */
    /* JADX WARN: Code duplicated, block: B:287:0x04cc  */
    /* JADX WARN: Code duplicated, block: B:296:0x04f7 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:300:0x0504 A[Catch: all -> 0x0081, TRY_LEAVE, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:303:0x0514 A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:307:0x053a A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:309:0x0544 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:311:0x054c A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:314:0x055a A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:320:0x0570 A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:322:0x0578  */
    /* JADX WARN: Code duplicated, block: B:325:0x0582  */
    /* JADX WARN: Code duplicated, block: B:327:0x0586 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:329:0x058b A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:332:0x0596  */
    /* JADX WARN: Code duplicated, block: B:335:0x059f A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:337:0x05b2 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:338:0x05bb A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:339:0x05c0 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:341:0x05cd A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:342:0x05d4  */
    /* JADX WARN: Code duplicated, block: B:345:0x05d9 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:346:0x05db A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:347:0x05e0  */
    /* JADX WARN: Code duplicated, block: B:350:0x05e9 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:351:0x05f4  */
    /* JADX WARN: Code duplicated, block: B:353:0x05f9 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:355:0x05ff A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:358:0x0605 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:361:0x0611 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:367:0x0626 A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:369:0x062e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:370:0x0630 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:371:0x0635 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:374:0x0656 A[Catch: all -> 0x0081, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:379:0x066f A[Catch: all -> 0x0081, TRY_ENTER, TryCatch #0 {all -> 0x0081, blocks: (B:24:0x0075, B:26:0x0079, B:31:0x0086, B:34:0x0099, B:38:0x00af, B:117:0x0220, B:118:0x0226, B:120:0x0231, B:122:0x0239, B:126:0x024f, B:128:0x025d, B:148:0x02a0, B:149:0x02a8, B:151:0x02b5, B:152:0x02b8, B:154:0x02c2, B:160:0x02d2, B:161:0x02d8, B:163:0x02e0, B:164:0x02e5, B:166:0x02ed, B:167:0x02f7, B:170:0x02ff, B:171:0x0306, B:172:0x0307, B:175:0x0311, B:177:0x0315, B:179:0x031b, B:180:0x031e, B:182:0x0324, B:185:0x0335, B:191:0x034f, B:195:0x035c, B:192:0x0354, B:194:0x0358, B:130:0x0263, B:133:0x026e, B:137:0x027a, B:139:0x0280, B:144:0x028d, B:145:0x0290, B:203:0x036d, B:207:0x0379, B:209:0x0381, B:211:0x038b, B:213:0x039c, B:215:0x03a6, B:217:0x03ae, B:219:0x03b2, B:221:0x03b8, B:224:0x03bd, B:226:0x03c1, B:249:0x0426, B:251:0x042e, B:254:0x0437, B:255:0x0452, B:228:0x03c7, B:230:0x03cf, B:233:0x03d5, B:234:0x03e2, B:237:0x03eb, B:240:0x03f1, B:243:0x03f6, B:244:0x0403, B:246:0x040d, B:248:0x041b, B:256:0x0453, B:257:0x0471, B:259:0x0474, B:261:0x0478, B:263:0x047c, B:266:0x0482, B:270:0x048b, B:276:0x049b, B:278:0x04aa, B:280:0x04b5, B:281:0x04bd, B:282:0x04c0, B:294:0x04ec, B:296:0x04f7, B:300:0x0504, B:303:0x0514, B:304:0x0535, B:289:0x04d0, B:291:0x04da, B:293:0x04e9, B:292:0x04df, B:307:0x053a, B:309:0x0544, B:311:0x054c, B:312:0x054f, B:314:0x055a, B:315:0x055e, B:317:0x0569, B:320:0x0570, B:323:0x057c, B:324:0x0581, B:327:0x0586, B:329:0x058b, B:333:0x0597, B:335:0x059f, B:337:0x05b2, B:341:0x05cd, B:343:0x05d5, B:346:0x05db, B:348:0x05e1, B:350:0x05e9, B:353:0x05f9, B:356:0x0601, B:358:0x0605, B:359:0x060c, B:361:0x0611, B:362:0x0614, B:364:0x061c, B:367:0x0626, B:370:0x0630, B:371:0x0635, B:372:0x063a, B:373:0x0655, B:338:0x05bb, B:339:0x05c0, B:374:0x0656, B:376:0x0668, B:379:0x066f, B:382:0x067d, B:383:0x069e, B:41:0x00c3, B:42:0x00e1, B:45:0x00e6, B:47:0x00f1, B:49:0x00f5, B:51:0x00f9, B:54:0x00ff, B:61:0x010e, B:63:0x0116, B:66:0x0128, B:67:0x0140, B:68:0x0141, B:69:0x0146, B:80:0x015b, B:81:0x0161, B:83:0x0168, B:85:0x0173, B:92:0x0185, B:95:0x018f, B:96:0x01a7, B:90:0x0180, B:84:0x016d, B:97:0x01a8, B:98:0x01c0, B:104:0x01ca, B:106:0x01d2, B:109:0x01e5, B:110:0x0205, B:111:0x0206, B:112:0x020b, B:113:0x020c, B:115:0x0216, B:384:0x069f, B:385:0x06a6, B:386:0x06a7, B:387:0x06ac, B:388:0x06ad, B:389:0x06b2), top: B:392:0x0075, inners: #1, #2 }] */
    /* JADX WARN: Code duplicated, block: B:406:0x02a8 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:407:0x0374 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:413:0x0500 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:414:0x0569 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:415:0x057c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:416:0x061c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:417:0x063a A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:418:0x0668 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:420:0x067d A[SYNTHETIC] */
    /* JADX WARN: Instruction removed from duplicated block: B:303:0x0514, please report this as an issue */
    public final Object parseObject(Map map, Object obj) {
        Object objScanSymbolUnQuoted;
        boolean z;
        char current;
        Object objNewInstance;
        boolean z2;
        int i;
        char c;
        char c2;
        boolean z3;
        Map jSONObject;
        ParseContext context;
        Object object;
        String string;
        Type typeResolve;
        MapDeserializer mapDeserializer;
        JSONArray jSONArray;
        JSONArray array;
        Object obj2;
        char current2;
        String strStringVal;
        Object obj3;
        JSONScanner jSONScanner;
        Object time;
        ParseContext parseContext;
        ParseContext context2;
        Object objFluentPut;
        Object obj4;
        int i2;
        Class<?> clsCheckAutoType;
        ParseContext parseContext2;
        Class<?> cls;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 8) {
            jSONLexer.nextToken();
            return null;
        }
        if (jSONLexer.token() == 13) {
            jSONLexer.nextToken();
            return map;
        }
        if (jSONLexer.token() == 4 && jSONLexer.stringVal().length() == 0) {
            jSONLexer.nextToken();
            return map;
        }
        if (jSONLexer.token() != 12 && jSONLexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + jSONLexer.tokenName() + ", " + jSONLexer.info());
        }
        ParseContext parseContext3 = this.context;
        try {
            boolean z4 = map instanceof JSONObject;
            Map innerMap = z4 ? ((JSONObject) map).getInnerMap() : map;
            boolean z5 = false;
            while (true) {
                jSONLexer.skipWhitespace();
                char current3 = jSONLexer.getCurrent();
                if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current3 == ',') {
                        jSONLexer.next();
                        jSONLexer.skipWhitespace();
                        current3 = jSONLexer.getCurrent();
                    }
                }
                if (current3 == '\"') {
                    objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, '\"');
                    jSONLexer.skipWhitespace();
                    if (jSONLexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                } else {
                    if (current3 == '}') {
                        jSONLexer.next();
                        jSONLexer.resetStringPosition();
                        jSONLexer.nextToken();
                        if (!z5) {
                            ParseContext parseContext4 = this.context;
                            if (parseContext4 != null && obj == parseContext4.fieldName && map == parseContext4.object) {
                                parseContext3 = parseContext4;
                            } else {
                                ParseContext context3 = setContext(map, obj);
                                if (parseContext3 == null) {
                                    parseContext3 = context3;
                                }
                            }
                        }
                        setContext(parseContext3);
                        return map;
                    }
                    if (current3 == '\'') {
                        if (!jSONLexer.isEnabled(Feature.AllowSingleQuotes)) {
                            throw new JSONException("syntax error");
                        }
                        objScanSymbolUnQuoted = jSONLexer.scanSymbol(this.symbolTable, '\'');
                        jSONLexer.skipWhitespace();
                        if (jSONLexer.getCurrent() != ':') {
                            throw new JSONException("expect ':' at " + jSONLexer.pos());
                        }
                    } else {
                        if (current3 == 26) {
                            throw new JSONException("syntax error");
                        }
                        if (current3 == ',') {
                            throw new JSONException("syntax error");
                        }
                        if ((current3 < '0' || current3 > '9') && current3 != '-') {
                            if (current3 == '{' || current3 == '[') {
                                int i3 = this.objectKeyLevel;
                                this.objectKeyLevel = i3 + 1;
                                if (i3 > 512) {
                                    throw new JSONException("object key level > 512");
                                }
                                jSONLexer.nextToken();
                                objScanSymbolUnQuoted = parse();
                                z = true;
                            } else {
                                if (!jSONLexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                                    throw new JSONException("syntax error");
                                }
                                objScanSymbolUnQuoted = jSONLexer.scanSymbolUnQuoted(this.symbolTable);
                                jSONLexer.skipWhitespace();
                                char current4 = jSONLexer.getCurrent();
                                if (current4 != ':') {
                                    throw new JSONException("expect ':' at " + jSONLexer.pos() + ", actual " + current4);
                                }
                            }
                            if (!z) {
                                jSONLexer.next();
                                jSONLexer.skipWhitespace();
                            }
                            current = jSONLexer.getCurrent();
                            jSONLexer.resetStringPosition();
                            if (objScanSymbolUnQuoted == JSON.DEFAULT_TYPE_KEY || jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                objNewInstance = null;
                                if (objScanSymbolUnQuoted != "$ref" && parseContext3 != null && (map == null || map.size() == 0)) {
                                    if (!jSONLexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                                        jSONLexer.nextToken(4);
                                        if (jSONLexer.token() != 4) {
                                            throw new JSONException("illegal ref, " + JSONToken.name(jSONLexer.token()));
                                        }
                                        String strStringVal2 = jSONLexer.stringVal();
                                        jSONLexer.nextToken(13);
                                        if (jSONLexer.token() != 16) {
                                            if ("@".equals(strStringVal2)) {
                                                ParseContext parseContext5 = this.context;
                                                if (parseContext5 != null) {
                                                    obj4 = parseContext5.object;
                                                    if ((obj4 instanceof Object[]) || (obj4 instanceof Collection)) {
                                                        objFluentPut = obj4;
                                                    } else {
                                                        ParseContext parseContext6 = parseContext5.parent;
                                                        if (parseContext6 != null) {
                                                            objFluentPut = parseContext6.object;
                                                        } else {
                                                            objFluentPut = null;
                                                        }
                                                    }
                                                } else {
                                                    objFluentPut = null;
                                                }
                                            } else if (FileTree.PARENT_DIR.equals(strStringVal2)) {
                                                Object obj5 = parseContext3.object;
                                                if (obj5 != null) {
                                                    objFluentPut = obj5;
                                                } else {
                                                    addResolveTask(new ResolveTask(parseContext3, strStringVal2));
                                                    setResolveStatus(1);
                                                    objFluentPut = null;
                                                }
                                            } else {
                                                if ("$".equals(strStringVal2)) {
                                                    ParseContext parseContext7 = parseContext3;
                                                    while (true) {
                                                        ParseContext parseContext8 = parseContext7.parent;
                                                        if (parseContext8 == null) {
                                                            break;
                                                        }
                                                        parseContext7 = parseContext8;
                                                    }
                                                    obj4 = parseContext7.object;
                                                    if (obj4 != null) {
                                                        objFluentPut = obj4;
                                                    } else {
                                                        addResolveTask(new ResolveTask(parseContext7, strStringVal2));
                                                        setResolveStatus(1);
                                                    }
                                                } else if (JSONPath.compile(strStringVal2).isRef()) {
                                                    addResolveTask(new ResolveTask(parseContext3, strStringVal2));
                                                    setResolveStatus(1);
                                                } else {
                                                    objFluentPut = new JSONObject().fluentPut("$ref", strStringVal2);
                                                }
                                                objFluentPut = null;
                                            }
                                            if (jSONLexer.token() == 13) {
                                                jSONLexer.nextToken(16);
                                                setContext(parseContext3);
                                                return objFluentPut;
                                            }
                                            throw new JSONException("syntax error, " + jSONLexer.info());
                                        }
                                        innerMap.put(objScanSymbolUnQuoted, strStringVal2);
                                    }
                                }
                                z2 = true;
                                if (!z5) {
                                    parseContext = this.context;
                                    if (parseContext == null && obj == parseContext.fieldName && map == parseContext.object) {
                                        parseContext3 = parseContext;
                                    } else {
                                        context2 = setContext(map, obj);
                                        if (parseContext3 == null) {
                                            parseContext3 = context2;
                                        }
                                        z5 = true;
                                    }
                                }
                                if (map.getClass() == JSONObject.class && objScanSymbolUnQuoted == null) {
                                    objScanSymbolUnQuoted = "null";
                                }
                                if (current == '\"') {
                                    jSONLexer.scanString();
                                    strStringVal = jSONLexer.stringVal();
                                    if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                        jSONScanner = new JSONScanner(strStringVal);
                                        if (jSONScanner.scanISO8601DateIfMatch()) {
                                            obj3 = strStringVal;
                                            time = strStringVal;
                                            time = jSONScanner.getCalendar().getTime();
                                        }
                                        obj3 = strStringVal;
                                        time = strStringVal;
                                        jSONScanner.close();
                                        obj3 = time;
                                    }
                                    obj3 = strStringVal;
                                    innerMap.put(objScanSymbolUnQuoted, obj3);
                                    obj2 = obj3;
                                } else if ((current < '0' && current <= '9') || current == '-') {
                                    jSONLexer.scanNumber();
                                    Number numberIntegerValue = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
                                    innerMap.put(objScanSymbolUnQuoted, numberIntegerValue);
                                    obj2 = numberIntegerValue;
                                } else if (current == '[') {
                                    jSONLexer.nextToken();
                                    jSONArray = new JSONArray();
                                    if (obj != null) {
                                        obj.getClass();
                                    }
                                    if (obj == null) {
                                        setContext(parseContext3);
                                    }
                                    parseArray(jSONArray, objScanSymbolUnQuoted);
                                    array = jSONArray;
                                    if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                        array = jSONArray.toArray();
                                    }
                                    innerMap.put(objScanSymbolUnQuoted, array);
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext3);
                                        return map;
                                    }
                                    c2 = 16;
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error");
                                    }
                                    c = CharUtils.CR;
                                } else if (current == '{') {
                                    jSONLexer.nextToken();
                                    if (obj == null && obj.getClass() == Integer.class) {
                                        z3 = true;
                                    } else {
                                        z3 = false;
                                    }
                                    if (jSONLexer.isEnabled(Feature.CustomMapDeserializer)) {
                                        mapDeserializer = (MapDeserializer) this.config.getDeserializer(Map.class);
                                        if ((jSONLexer.getFeatures() & Feature.OrderedField.mask) != 0) {
                                            jSONObject = mapDeserializer.createMap(Map.class, jSONLexer.getFeatures());
                                        } else {
                                            jSONObject = mapDeserializer.createMap(Map.class);
                                        }
                                    } else {
                                        jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                                    }
                                    if (z3) {
                                        context = null;
                                    } else {
                                        context = setContext(this.context, jSONObject, objScanSymbolUnQuoted);
                                    }
                                    if (this.fieldTypeResolver == null) {
                                        object = null;
                                        z2 = false;
                                    } else {
                                        if (objScanSymbolUnQuoted != null) {
                                            string = objScanSymbolUnQuoted.toString();
                                        } else {
                                            string = null;
                                        }
                                        typeResolve = this.fieldTypeResolver.resolve(map, string);
                                        if (typeResolve != null) {
                                            object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                        } else {
                                            object = null;
                                            z2 = false;
                                        }
                                    }
                                    if (!z2) {
                                        object = parseObject(jSONObject, objScanSymbolUnQuoted);
                                    }
                                    if (context != null && jSONObject != object) {
                                        context.object = map;
                                    }
                                    if (objScanSymbolUnQuoted != null) {
                                        checkMapResolve(map, objScanSymbolUnQuoted.toString());
                                    }
                                    innerMap.put(objScanSymbolUnQuoted, object);
                                    if (z3) {
                                        setContext(object, objScanSymbolUnQuoted);
                                    }
                                    if (jSONLexer.token() == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext3);
                                        setContext(parseContext3);
                                        return map;
                                    }
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error, " + jSONLexer.tokenName());
                                    }
                                    if (z3) {
                                        popContext();
                                    } else {
                                        setContext(parseContext3);
                                    }
                                    c = CharUtils.CR;
                                    c2 = 16;
                                } else {
                                    jSONLexer.nextToken();
                                    innerMap.put(objScanSymbolUnQuoted, parse());
                                    i = jSONLexer.token();
                                    c = CharUtils.CR;
                                    if (i == 13) {
                                        jSONLexer.nextToken();
                                        setContext(parseContext3);
                                        return map;
                                    }
                                    c2 = 16;
                                    if (jSONLexer.token() != 16) {
                                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                    }
                                }
                                jSONLexer.skipWhitespace();
                                current2 = jSONLexer.getCurrent();
                                if (current2 != ',') {
                                    if (current2 == '}') {
                                        jSONLexer.next();
                                        jSONLexer.resetStringPosition();
                                        jSONLexer.nextToken();
                                        setContext(obj2, objScanSymbolUnQuoted);
                                        setContext(parseContext3);
                                        return map;
                                    }
                                    throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                                }
                                jSONLexer.next();
                                c = CharUtils.CR;
                                c2 = 16;
                            } else {
                                String strScanSymbol = jSONLexer.scanSymbol(this.symbolTable, '\"');
                                if (jSONLexer.isEnabled(Feature.IgnoreAutoType)) {
                                    objNewInstance = null;
                                } else {
                                    if (map != null && map.getClass().getName().equals(strScanSymbol)) {
                                        clsCheckAutoType = map.getClass();
                                    } else if ("java.util.HashMap".equals(strScanSymbol)) {
                                        clsCheckAutoType = HashMap.class;
                                    } else {
                                        if (!"java.util.LinkedHashMap".equals(strScanSymbol)) {
                                            while (true) {
                                                if (i2 >= strScanSymbol.length()) {
                                                    objNewInstance = null;
                                                    clsCheckAutoType = null;
                                                    break;
                                                }
                                                char cCharAt = strScanSymbol.charAt(i2);
                                                i2 = (cCharAt >= '0' && cCharAt <= '9') ? i2 + 1 : 0;
                                                objNewInstance = null;
                                                clsCheckAutoType = this.config.checkAutoType(strScanSymbol, null, jSONLexer.getFeatures());
                                                break;
                                            }
                                        }
                                        clsCheckAutoType = LinkedHashMap.class;
                                        if (clsCheckAutoType == null) {
                                            jSONLexer.nextToken(16);
                                            if (jSONLexer.token() == 13) {
                                                jSONLexer.nextToken(16);
                                                try {
                                                    if (this.config.getDeserializer(clsCheckAutoType) instanceof JavaBeanDeserializer) {
                                                        objNewInstance = TypeUtils.cast((Object) map, (Class<Object>) clsCheckAutoType, this.config);
                                                    }
                                                    if (objNewInstance == null) {
                                                        if (clsCheckAutoType == Cloneable.class) {
                                                            objNewInstance = new HashMap();
                                                        } else if ("java.util.Collections$EmptyMap".equals(strScanSymbol)) {
                                                            objNewInstance = Collections.emptyMap();
                                                        } else if ("java.util.Collections$UnmodifiableMap".equals(strScanSymbol)) {
                                                            objNewInstance = Collections.unmodifiableMap(new HashMap());
                                                        } else {
                                                            objNewInstance = clsCheckAutoType.newInstance();
                                                        }
                                                    }
                                                    setContext(parseContext3);
                                                    return objNewInstance;
                                                } catch (Exception e) {
                                                    throw new JSONException("create instance error", e);
                                                }
                                            }
                                            setResolveStatus(2);
                                            parseContext2 = this.context;
                                            if (parseContext2 != null && obj != null && !(obj instanceof Integer) && !(parseContext2.fieldName instanceof Integer)) {
                                                popContext();
                                            }
                                            if (map.size() > 0) {
                                                Object objCast = TypeUtils.cast((Object) map, (Class<Object>) clsCheckAutoType, this.config);
                                                setResolveStatus(0);
                                                parseObject(objCast);
                                                setContext(parseContext3);
                                                return objCast;
                                            }
                                            ObjectDeserializer deserializer = this.config.getDeserializer(clsCheckAutoType);
                                            cls = deserializer.getClass();
                                            if ((JavaBeanDeserializer.class.isAssignableFrom(cls) && cls != JavaBeanDeserializer.class && cls != ThrowableDeserializer.class) || (deserializer instanceof MapDeserializer)) {
                                                setResolveStatus(0);
                                            }
                                            Object objDeserialze = deserializer.deserialze(this, clsCheckAutoType, obj);
                                            setContext(parseContext3);
                                            return objDeserialze;
                                        }
                                        innerMap.put(JSON.DEFAULT_TYPE_KEY, strScanSymbol);
                                    }
                                    objNewInstance = null;
                                    if (clsCheckAutoType == null) {
                                        jSONLexer.nextToken(16);
                                        if (jSONLexer.token() == 13) {
                                            jSONLexer.nextToken(16);
                                            if (this.config.getDeserializer(clsCheckAutoType) instanceof JavaBeanDeserializer) {
                                                objNewInstance = TypeUtils.cast((Object) map, (Class<Object>) clsCheckAutoType, this.config);
                                            }
                                            if (objNewInstance == null) {
                                                if (clsCheckAutoType == Cloneable.class) {
                                                    objNewInstance = new HashMap();
                                                } else if ("java.util.Collections$EmptyMap".equals(strScanSymbol)) {
                                                    objNewInstance = Collections.emptyMap();
                                                } else if ("java.util.Collections$UnmodifiableMap".equals(strScanSymbol)) {
                                                    objNewInstance = Collections.unmodifiableMap(new HashMap());
                                                } else {
                                                    objNewInstance = clsCheckAutoType.newInstance();
                                                }
                                            }
                                            setContext(parseContext3);
                                            return objNewInstance;
                                        }
                                        setResolveStatus(2);
                                        parseContext2 = this.context;
                                        if (parseContext2 != null) {
                                            popContext();
                                        }
                                        if (map.size() > 0) {
                                            Object objCast2 = TypeUtils.cast((Object) map, (Class<Object>) clsCheckAutoType, this.config);
                                            setResolveStatus(0);
                                            parseObject(objCast2);
                                            setContext(parseContext3);
                                            return objCast2;
                                        }
                                        ObjectDeserializer deserializer2 = this.config.getDeserializer(clsCheckAutoType);
                                        cls = deserializer2.getClass();
                                        if (JavaBeanDeserializer.class.isAssignableFrom(cls)) {
                                            setResolveStatus(0);
                                        } else {
                                            setResolveStatus(0);
                                        }
                                        Object objDeserialze2 = deserializer2.deserialze(this, clsCheckAutoType, obj);
                                        setContext(parseContext3);
                                        return objDeserialze2;
                                    }
                                    innerMap.put(JSON.DEFAULT_TYPE_KEY, strScanSymbol);
                                }
                            }
                        } else {
                            jSONLexer.resetStringPosition();
                            jSONLexer.scanNumber();
                            try {
                                Object objIntegerValue = jSONLexer.token() == 2 ? jSONLexer.integerValue() : jSONLexer.decimalValue(true);
                                if (jSONLexer.isEnabled(Feature.NonStringKeyAsString) || z4) {
                                    objIntegerValue = objIntegerValue.toString();
                                }
                                objScanSymbolUnQuoted = objIntegerValue;
                                if (jSONLexer.getCurrent() != ':') {
                                    throw new JSONException("parse number key error" + jSONLexer.info());
                                }
                            } catch (NumberFormatException unused) {
                                throw new JSONException("parse number key error" + jSONLexer.info());
                            }
                        }
                    }
                }
                z = false;
                if (!z) {
                    jSONLexer.next();
                    jSONLexer.skipWhitespace();
                }
                current = jSONLexer.getCurrent();
                jSONLexer.resetStringPosition();
                if (objScanSymbolUnQuoted == JSON.DEFAULT_TYPE_KEY) {
                    objNewInstance = null;
                    if (objScanSymbolUnQuoted != "$ref") {
                    }
                    z2 = true;
                    if (!z5) {
                        parseContext = this.context;
                        if (parseContext == null) {
                            context2 = setContext(map, obj);
                            if (parseContext3 == null) {
                                parseContext3 = context2;
                            }
                            z5 = true;
                        } else {
                            context2 = setContext(map, obj);
                            if (parseContext3 == null) {
                                parseContext3 = context2;
                            }
                            z5 = true;
                        }
                    }
                    if (map.getClass() == JSONObject.class) {
                        objScanSymbolUnQuoted = "null";
                    }
                    if (current == '\"') {
                        jSONLexer.scanString();
                        strStringVal = jSONLexer.stringVal();
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            jSONScanner = new JSONScanner(strStringVal);
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                obj3 = strStringVal;
                                time = strStringVal;
                                time = jSONScanner.getCalendar().getTime();
                            }
                            obj3 = strStringVal;
                            time = strStringVal;
                            jSONScanner.close();
                            obj3 = time;
                        }
                        obj3 = strStringVal;
                        innerMap.put(objScanSymbolUnQuoted, obj3);
                        obj2 = obj3;
                    } else if (current < '0') {
                        if (current == '[') {
                            jSONLexer.nextToken();
                            jSONArray = new JSONArray();
                            if (obj != null) {
                                obj.getClass();
                            }
                            if (obj == null) {
                                setContext(parseContext3);
                            }
                            parseArray(jSONArray, objScanSymbolUnQuoted);
                            array = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                array = jSONArray.toArray();
                            }
                            innerMap.put(objScanSymbolUnQuoted, array);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                return map;
                            }
                            c2 = 16;
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error");
                            }
                            c = CharUtils.CR;
                        } else if (current == '{') {
                            jSONLexer.nextToken();
                            if (obj == null) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                            if (jSONLexer.isEnabled(Feature.CustomMapDeserializer)) {
                                mapDeserializer = (MapDeserializer) this.config.getDeserializer(Map.class);
                                if ((jSONLexer.getFeatures() & Feature.OrderedField.mask) != 0) {
                                    jSONObject = mapDeserializer.createMap(Map.class, jSONLexer.getFeatures());
                                } else {
                                    jSONObject = mapDeserializer.createMap(Map.class);
                                }
                            } else {
                                jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                            }
                            if (z3) {
                                context = setContext(this.context, jSONObject, objScanSymbolUnQuoted);
                            } else {
                                context = null;
                            }
                            if (this.fieldTypeResolver == null) {
                                object = null;
                                z2 = false;
                            } else {
                                if (objScanSymbolUnQuoted != null) {
                                    string = objScanSymbolUnQuoted.toString();
                                } else {
                                    string = null;
                                }
                                typeResolve = this.fieldTypeResolver.resolve(map, string);
                                if (typeResolve != null) {
                                    object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                } else {
                                    object = null;
                                    z2 = false;
                                }
                            }
                            if (!z2) {
                                object = parseObject(jSONObject, objScanSymbolUnQuoted);
                            }
                            if (context != null) {
                                context.object = map;
                            }
                            if (objScanSymbolUnQuoted != null) {
                                checkMapResolve(map, objScanSymbolUnQuoted.toString());
                            }
                            innerMap.put(objScanSymbolUnQuoted, object);
                            if (z3) {
                                setContext(object, objScanSymbolUnQuoted);
                            }
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                setContext(parseContext3);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, " + jSONLexer.tokenName());
                            }
                            if (z3) {
                                popContext();
                            } else {
                                setContext(parseContext3);
                            }
                            c = CharUtils.CR;
                            c2 = 16;
                        } else {
                            jSONLexer.nextToken();
                            innerMap.put(objScanSymbolUnQuoted, parse());
                            i = jSONLexer.token();
                            c = CharUtils.CR;
                            if (i == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                return map;
                            }
                            c2 = 16;
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                            }
                        }
                    } else if (current == '[') {
                        jSONLexer.nextToken();
                        jSONArray = new JSONArray();
                        if (obj != null) {
                            obj.getClass();
                        }
                        if (obj == null) {
                            setContext(parseContext3);
                        }
                        parseArray(jSONArray, objScanSymbolUnQuoted);
                        array = jSONArray;
                        if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                            array = jSONArray.toArray();
                        }
                        innerMap.put(objScanSymbolUnQuoted, array);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            return map;
                        }
                        c2 = 16;
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error");
                        }
                        c = CharUtils.CR;
                    } else if (current == '{') {
                        jSONLexer.nextToken();
                        if (obj == null) {
                            z3 = false;
                        } else {
                            z3 = false;
                        }
                        if (jSONLexer.isEnabled(Feature.CustomMapDeserializer)) {
                            mapDeserializer = (MapDeserializer) this.config.getDeserializer(Map.class);
                            if ((jSONLexer.getFeatures() & Feature.OrderedField.mask) != 0) {
                                jSONObject = mapDeserializer.createMap(Map.class, jSONLexer.getFeatures());
                            } else {
                                jSONObject = mapDeserializer.createMap(Map.class);
                            }
                        } else {
                            jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                        }
                        if (z3) {
                            context = setContext(this.context, jSONObject, objScanSymbolUnQuoted);
                        } else {
                            context = null;
                        }
                        if (this.fieldTypeResolver == null) {
                            object = null;
                            z2 = false;
                        } else {
                            if (objScanSymbolUnQuoted != null) {
                                string = objScanSymbolUnQuoted.toString();
                            } else {
                                string = null;
                            }
                            typeResolve = this.fieldTypeResolver.resolve(map, string);
                            if (typeResolve != null) {
                                object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                            } else {
                                object = null;
                                z2 = false;
                            }
                        }
                        if (!z2) {
                            object = parseObject(jSONObject, objScanSymbolUnQuoted);
                        }
                        if (context != null) {
                            context.object = map;
                        }
                        if (objScanSymbolUnQuoted != null) {
                            checkMapResolve(map, objScanSymbolUnQuoted.toString());
                        }
                        innerMap.put(objScanSymbolUnQuoted, object);
                        if (z3) {
                            setContext(object, objScanSymbolUnQuoted);
                        }
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            setContext(parseContext3);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, " + jSONLexer.tokenName());
                        }
                        if (z3) {
                            popContext();
                        } else {
                            setContext(parseContext3);
                        }
                        c = CharUtils.CR;
                        c2 = 16;
                    } else {
                        jSONLexer.nextToken();
                        innerMap.put(objScanSymbolUnQuoted, parse());
                        i = jSONLexer.token();
                        c = CharUtils.CR;
                        if (i == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            return map;
                        }
                        c2 = 16;
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                        }
                    }
                    jSONLexer.skipWhitespace();
                    current2 = jSONLexer.getCurrent();
                    if (current2 != ',') {
                        if (current2 == '}') {
                            jSONLexer.next();
                            jSONLexer.resetStringPosition();
                            jSONLexer.nextToken();
                            setContext(obj2, objScanSymbolUnQuoted);
                            setContext(parseContext3);
                            return map;
                        }
                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                    jSONLexer.next();
                    c = CharUtils.CR;
                    c2 = 16;
                } else {
                    objNewInstance = null;
                    if (objScanSymbolUnQuoted != "$ref") {
                    }
                    z2 = true;
                    if (!z5) {
                        parseContext = this.context;
                        if (parseContext == null) {
                            context2 = setContext(map, obj);
                            if (parseContext3 == null) {
                                parseContext3 = context2;
                            }
                            z5 = true;
                        } else {
                            context2 = setContext(map, obj);
                            if (parseContext3 == null) {
                                parseContext3 = context2;
                            }
                            z5 = true;
                        }
                    }
                    if (map.getClass() == JSONObject.class) {
                        objScanSymbolUnQuoted = "null";
                    }
                    if (current == '\"') {
                        jSONLexer.scanString();
                        strStringVal = jSONLexer.stringVal();
                        if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                            jSONScanner = new JSONScanner(strStringVal);
                            if (jSONScanner.scanISO8601DateIfMatch()) {
                                obj3 = strStringVal;
                                time = strStringVal;
                                time = jSONScanner.getCalendar().getTime();
                            }
                            obj3 = strStringVal;
                            time = strStringVal;
                            jSONScanner.close();
                            obj3 = time;
                        }
                        obj3 = strStringVal;
                        innerMap.put(objScanSymbolUnQuoted, obj3);
                        obj2 = obj3;
                    } else if (current < '0') {
                        if (current == '[') {
                            jSONLexer.nextToken();
                            jSONArray = new JSONArray();
                            if (obj != null) {
                                obj.getClass();
                            }
                            if (obj == null) {
                                setContext(parseContext3);
                            }
                            parseArray(jSONArray, objScanSymbolUnQuoted);
                            array = jSONArray;
                            if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                array = jSONArray.toArray();
                            }
                            innerMap.put(objScanSymbolUnQuoted, array);
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                return map;
                            }
                            c2 = 16;
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error");
                            }
                            c = CharUtils.CR;
                        } else if (current == '{') {
                            jSONLexer.nextToken();
                            if (obj == null) {
                                z3 = false;
                            } else {
                                z3 = false;
                            }
                            if (jSONLexer.isEnabled(Feature.CustomMapDeserializer)) {
                                mapDeserializer = (MapDeserializer) this.config.getDeserializer(Map.class);
                                if ((jSONLexer.getFeatures() & Feature.OrderedField.mask) != 0) {
                                    jSONObject = mapDeserializer.createMap(Map.class, jSONLexer.getFeatures());
                                } else {
                                    jSONObject = mapDeserializer.createMap(Map.class);
                                }
                            } else {
                                jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                            }
                            if (z3) {
                                context = setContext(this.context, jSONObject, objScanSymbolUnQuoted);
                            } else {
                                context = null;
                            }
                            if (this.fieldTypeResolver == null) {
                                object = null;
                                z2 = false;
                            } else {
                                if (objScanSymbolUnQuoted != null) {
                                    string = objScanSymbolUnQuoted.toString();
                                } else {
                                    string = null;
                                }
                                typeResolve = this.fieldTypeResolver.resolve(map, string);
                                if (typeResolve != null) {
                                    object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                                } else {
                                    object = null;
                                    z2 = false;
                                }
                            }
                            if (!z2) {
                                object = parseObject(jSONObject, objScanSymbolUnQuoted);
                            }
                            if (context != null) {
                                context.object = map;
                            }
                            if (objScanSymbolUnQuoted != null) {
                                checkMapResolve(map, objScanSymbolUnQuoted.toString());
                            }
                            innerMap.put(objScanSymbolUnQuoted, object);
                            if (z3) {
                                setContext(object, objScanSymbolUnQuoted);
                            }
                            if (jSONLexer.token() == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                setContext(parseContext3);
                                return map;
                            }
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, " + jSONLexer.tokenName());
                            }
                            if (z3) {
                                popContext();
                            } else {
                                setContext(parseContext3);
                            }
                            c = CharUtils.CR;
                            c2 = 16;
                        } else {
                            jSONLexer.nextToken();
                            innerMap.put(objScanSymbolUnQuoted, parse());
                            i = jSONLexer.token();
                            c = CharUtils.CR;
                            if (i == 13) {
                                jSONLexer.nextToken();
                                setContext(parseContext3);
                                return map;
                            }
                            c2 = 16;
                            if (jSONLexer.token() != 16) {
                                throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                            }
                        }
                    } else if (current == '[') {
                        jSONLexer.nextToken();
                        jSONArray = new JSONArray();
                        if (obj != null) {
                            obj.getClass();
                        }
                        if (obj == null) {
                            setContext(parseContext3);
                        }
                        parseArray(jSONArray, objScanSymbolUnQuoted);
                        array = jSONArray;
                        if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                            array = jSONArray.toArray();
                        }
                        innerMap.put(objScanSymbolUnQuoted, array);
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            return map;
                        }
                        c2 = 16;
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error");
                        }
                        c = CharUtils.CR;
                    } else if (current == '{') {
                        jSONLexer.nextToken();
                        if (obj == null) {
                            z3 = false;
                        } else {
                            z3 = false;
                        }
                        if (jSONLexer.isEnabled(Feature.CustomMapDeserializer)) {
                            mapDeserializer = (MapDeserializer) this.config.getDeserializer(Map.class);
                            if ((jSONLexer.getFeatures() & Feature.OrderedField.mask) != 0) {
                                jSONObject = mapDeserializer.createMap(Map.class, jSONLexer.getFeatures());
                            } else {
                                jSONObject = mapDeserializer.createMap(Map.class);
                            }
                        } else {
                            jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
                        }
                        if (z3) {
                            context = setContext(this.context, jSONObject, objScanSymbolUnQuoted);
                        } else {
                            context = null;
                        }
                        if (this.fieldTypeResolver == null) {
                            object = null;
                            z2 = false;
                        } else {
                            if (objScanSymbolUnQuoted != null) {
                                string = objScanSymbolUnQuoted.toString();
                            } else {
                                string = null;
                            }
                            typeResolve = this.fieldTypeResolver.resolve(map, string);
                            if (typeResolve != null) {
                                object = this.config.getDeserializer(typeResolve).deserialze(this, typeResolve, objScanSymbolUnQuoted);
                            } else {
                                object = null;
                                z2 = false;
                            }
                        }
                        if (!z2) {
                            object = parseObject(jSONObject, objScanSymbolUnQuoted);
                        }
                        if (context != null) {
                            context.object = map;
                        }
                        if (objScanSymbolUnQuoted != null) {
                            checkMapResolve(map, objScanSymbolUnQuoted.toString());
                        }
                        innerMap.put(objScanSymbolUnQuoted, object);
                        if (z3) {
                            setContext(object, objScanSymbolUnQuoted);
                        }
                        if (jSONLexer.token() == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            setContext(parseContext3);
                            return map;
                        }
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, " + jSONLexer.tokenName());
                        }
                        if (z3) {
                            popContext();
                        } else {
                            setContext(parseContext3);
                        }
                        c = CharUtils.CR;
                        c2 = 16;
                    } else {
                        jSONLexer.nextToken();
                        innerMap.put(objScanSymbolUnQuoted, parse());
                        i = jSONLexer.token();
                        c = CharUtils.CR;
                        if (i == 13) {
                            jSONLexer.nextToken();
                            setContext(parseContext3);
                            return map;
                        }
                        c2 = 16;
                        if (jSONLexer.token() != 16) {
                            throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                        }
                    }
                    jSONLexer.skipWhitespace();
                    current2 = jSONLexer.getCurrent();
                    if (current2 != ',') {
                        if (current2 == '}') {
                            jSONLexer.next();
                            jSONLexer.resetStringPosition();
                            jSONLexer.nextToken();
                            setContext(obj2, objScanSymbolUnQuoted);
                            setContext(parseContext3);
                            return map;
                        }
                        throw new JSONException("syntax error, position at " + jSONLexer.pos() + ", name " + objScanSymbolUnQuoted);
                    }
                    jSONLexer.next();
                    c = CharUtils.CR;
                    c2 = 16;
                }
            }
        } catch (Throwable th) {
            setContext(parseContext3);
            throw th;
        }
    }

    public void popContext() {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = this.context.parent;
        int i = this.contextArrayIndex;
        if (i <= 0) {
            return;
        }
        int i2 = i - 1;
        this.contextArrayIndex = i2;
        this.contextArray[i2] = null;
    }

    public Object resolveReference(String str) {
        if (this.contextArray == null) {
            return null;
        }
        int i = 0;
        while (true) {
            ParseContext[] parseContextArr = this.contextArray;
            if (i >= parseContextArr.length || i >= this.contextArrayIndex) {
                break;
            }
            ParseContext parseContext = parseContextArr[i];
            if (parseContext.toString().equals(str)) {
                return parseContext.object;
            }
            i++;
        }
        return null;
    }

    public void setConfig(ParserConfig parserConfig) {
        this.config = parserConfig;
    }

    public void setContext(ParseContext parseContext) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return;
        }
        this.context = parseContext;
    }

    public void setDateFomrat(DateFormat dateFormat) {
        setDateFormat(dateFormat);
    }

    public void setDateFormat(String str) {
        this.dateFormatPattern = str;
        this.dateFormat = null;
    }

    public void setFieldTypeResolver(FieldTypeResolver fieldTypeResolver) {
        this.fieldTypeResolver = fieldTypeResolver;
    }

    public void setResolveStatus(int i) {
        this.resolveStatus = i;
    }

    public void throwException(int i) {
        throw new JSONException("syntax error, expect " + JSONToken.name(i) + ", actual " + JSONToken.name(this.lexer.token()));
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig) {
        this(str, new JSONScanner(str, JSON.DEFAULT_PARSER_FEATURE), parserConfig);
    }

    public Object parse(Object obj) {
        Map jSONObject;
        JSONLexer jSONLexer = this.lexer;
        int i = jSONLexer.token();
        if (i == 2) {
            Number numberIntegerValue = jSONLexer.integerValue();
            jSONLexer.nextToken();
            return numberIntegerValue;
        }
        if (i == 3) {
            Number numberDecimalValue = jSONLexer.decimalValue(jSONLexer.isEnabled(Feature.UseBigDecimal));
            jSONLexer.nextToken();
            return numberDecimalValue;
        }
        if (i == 4) {
            String strStringVal = jSONLexer.stringVal();
            jSONLexer.nextToken(16);
            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                try {
                    if (jSONScanner.scanISO8601DateIfMatch()) {
                        return jSONScanner.getCalendar().getTime();
                    }
                } finally {
                    jSONScanner.close();
                }
            }
            return strStringVal;
        }
        if (i == 12) {
            if (isEnabled(Feature.UseNativeJavaObject)) {
                jSONObject = jSONLexer.isEnabled(Feature.OrderedField) ? new HashMap() : new LinkedHashMap();
            } else {
                jSONObject = new JSONObject(jSONLexer.isEnabled(Feature.OrderedField));
            }
            return parseObject(jSONObject, obj);
        }
        if (i == 14) {
            Collection arrayList = isEnabled(Feature.UseNativeJavaObject) ? new ArrayList() : new JSONArray();
            parseArray(arrayList, obj);
            return jSONLexer.isEnabled(Feature.UseObjectArray) ? arrayList.toArray() : arrayList;
        }
        if (i == 18) {
            if ("NaN".equals(jSONLexer.stringVal())) {
                jSONLexer.nextToken();
                return null;
            }
            throw new JSONException("syntax error, " + jSONLexer.info());
        }
        if (i == 26) {
            byte[] bArrBytesValue = jSONLexer.bytesValue();
            jSONLexer.nextToken();
            return bArrBytesValue;
        }
        switch (i) {
            case 6:
                jSONLexer.nextToken();
                return Boolean.TRUE;
            case 7:
                jSONLexer.nextToken();
                return Boolean.FALSE;
            case 8:
                jSONLexer.nextToken();
                return null;
            case 9:
                jSONLexer.nextToken(18);
                if (jSONLexer.token() != 18) {
                    throw new JSONException("syntax error");
                }
                jSONLexer.nextToken(10);
                accept(10);
                long jLongValue = jSONLexer.integerValue().longValue();
                accept(2);
                accept(11);
                return new Date(jLongValue);
            default:
                switch (i) {
                    case 20:
                        if (jSONLexer.isBlankInput()) {
                            return null;
                        }
                        throw new JSONException("unterminated json string, " + jSONLexer.info());
                    case 21:
                        jSONLexer.nextToken();
                        HashSet hashSet = new HashSet();
                        parseArray(hashSet, obj);
                        return hashSet;
                    case 22:
                        jSONLexer.nextToken();
                        TreeSet treeSet = new TreeSet();
                        parseArray(treeSet, obj);
                        return treeSet;
                    case 23:
                        jSONLexer.nextToken();
                        return null;
                    default:
                        throw new JSONException("syntax error, " + jSONLexer.info());
                }
        }
    }

    public DefaultJSONParser(String str, ParserConfig parserConfig, int i) {
        this(str, new JSONScanner(str, i), parserConfig);
    }

    public void parseArray(Class<?> cls, Collection collection) {
        parseArray((Type) cls, collection);
    }

    public ParseContext setContext(Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        return setContext(this.context, obj, obj2);
    }

    public void setDateFormat(DateFormat dateFormat) {
        this.dateFormat = dateFormat;
    }

    public DefaultJSONParser(char[] cArr, int i, ParserConfig parserConfig, int i2) {
        this(cArr, new JSONScanner(cArr, i, i2), parserConfig);
    }

    public void parseArray(Type type, Collection collection) {
        parseArray(type, collection, null);
    }

    public DefaultJSONParser(JSONLexer jSONLexer) {
        this(jSONLexer, ParserConfig.getGlobalInstance());
    }

    public void parseArray(Type type, Collection collection, Object obj) {
        ObjectDeserializer deserializer;
        int i = this.lexer.token();
        if (i == 21 || i == 22) {
            this.lexer.nextToken();
            i = this.lexer.token();
        }
        if (i == 14) {
            if (Integer.TYPE == type) {
                deserializer = IntegerCodec.instance;
                this.lexer.nextToken(2);
            } else if (String.class == type) {
                deserializer = StringCodec.instance;
                this.lexer.nextToken(4);
            } else {
                deserializer = this.config.getDeserializer(type);
                this.lexer.nextToken(deserializer.getFastMatchToken());
            }
            ParseContext parseContext = this.context;
            setContext(collection, obj);
            int i2 = 0;
            while (true) {
                try {
                    if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                        while (this.lexer.token() == 16) {
                            this.lexer.nextToken();
                        }
                    }
                    if (this.lexer.token() == 15) {
                        setContext(parseContext);
                        this.lexer.nextToken(16);
                        return;
                    }
                    Object objDeserialze = null;
                    if (Integer.TYPE == type) {
                        collection.add(IntegerCodec.instance.deserialze(this, null, null));
                    } else if (String.class == type) {
                        if (this.lexer.token() == 4) {
                            objDeserialze = this.lexer.stringVal();
                            this.lexer.nextToken(16);
                        } else {
                            Object obj2 = parse();
                            if (obj2 != null) {
                                objDeserialze = obj2.toString();
                            }
                        }
                        collection.add(objDeserialze);
                    } else {
                        if (this.lexer.token() == 8) {
                            this.lexer.nextToken();
                        } else {
                            objDeserialze = deserializer.deserialze(this, type, Integer.valueOf(i2));
                        }
                        collection.add(objDeserialze);
                        checkListResolve(collection);
                    }
                    if (this.lexer.token() == 16) {
                        this.lexer.nextToken(deserializer.getFastMatchToken());
                    }
                    i2++;
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("field " + obj + " expect '[', but " + JSONToken.name(i) + ", " + this.lexer.info());
        }
    }

    public ParseContext setContext(ParseContext parseContext, Object obj, Object obj2) {
        if (this.lexer.isEnabled(Feature.DisableCircularReferenceDetect)) {
            return null;
        }
        ParseContext parseContext2 = new ParseContext(parseContext, obj, obj2);
        this.context = parseContext2;
        addContext(parseContext2);
        return this.context;
    }

    public DefaultJSONParser(JSONLexer jSONLexer, ParserConfig parserConfig) {
        this((Object) null, jSONLexer, parserConfig);
    }

    public final void accept(int i, int i2) {
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == i) {
            jSONLexer.nextToken(i2);
        } else {
            throwException(i);
        }
    }

    public DefaultJSONParser(Object obj, JSONLexer jSONLexer, ParserConfig parserConfig) {
        this.dateFormatPattern = JSON.DEFFAULT_DATE_FORMAT;
        this.contextArrayIndex = 0;
        this.resolveStatus = 0;
        this.extraTypeProviders = null;
        this.extraProcessors = null;
        this.fieldTypeResolver = null;
        this.objectKeyLevel = 0;
        this.autoTypeAccept = null;
        this.lexer = jSONLexer;
        this.input = obj;
        this.config = parserConfig;
        this.symbolTable = parserConfig.symbolTable;
        char current = jSONLexer.getCurrent();
        if (current == '{') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 12;
        } else if (current == '[') {
            jSONLexer.next();
            ((JSONLexerBase) jSONLexer).token = 14;
        } else {
            jSONLexer.nextToken();
        }
    }

    public Object[] parseArray(Type[] typeArr) {
        Object objCast;
        Class<?> componentType;
        boolean zIsArray;
        Class cls;
        int i = 8;
        if (this.lexer.token() == 8) {
            this.lexer.nextToken(16);
            return null;
        }
        int i2 = 14;
        if (this.lexer.token() == 14) {
            Object[] objArr = new Object[typeArr.length];
            if (typeArr.length == 0) {
                this.lexer.nextToken(15);
                if (this.lexer.token() == 15) {
                    this.lexer.nextToken(16);
                    return new Object[0];
                }
                throw new JSONException("syntax error");
            }
            this.lexer.nextToken(2);
            int i3 = 0;
            while (i3 < typeArr.length) {
                if (this.lexer.token() == i) {
                    this.lexer.nextToken(16);
                    objCast = null;
                } else {
                    Type type = typeArr[i3];
                    if (type != Integer.TYPE && type != Integer.class) {
                        if (type == String.class) {
                            if (this.lexer.token() == 4) {
                                objCast = this.lexer.stringVal();
                                this.lexer.nextToken(16);
                            } else {
                                objCast = TypeUtils.cast(parse(), type, this.config);
                            }
                        } else {
                            if (i3 == typeArr.length - 1 && (type instanceof Class) && (((cls = (Class) type) != byte[].class && cls != char[].class) || this.lexer.token() != 4)) {
                                zIsArray = cls.isArray();
                                componentType = cls.getComponentType();
                            } else {
                                componentType = null;
                                zIsArray = false;
                            }
                            if (zIsArray && this.lexer.token() != i2) {
                                ArrayList arrayList = new ArrayList();
                                ObjectDeserializer deserializer = this.config.getDeserializer(componentType);
                                int fastMatchToken = deserializer.getFastMatchToken();
                                if (this.lexer.token() != 15) {
                                    while (true) {
                                        arrayList.add(deserializer.deserialze(this, type, null));
                                        if (this.lexer.token() != 16) {
                                            break;
                                        }
                                        this.lexer.nextToken(fastMatchToken);
                                    }
                                    if (this.lexer.token() != 15) {
                                        throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                                    }
                                }
                                objCast = TypeUtils.cast(arrayList, type, this.config);
                            } else {
                                objCast = this.config.getDeserializer(type).deserialze(this, type, Integer.valueOf(i3));
                            }
                        }
                    } else if (this.lexer.token() == 2) {
                        objCast = Integer.valueOf(this.lexer.intValue());
                        this.lexer.nextToken(16);
                    } else {
                        objCast = TypeUtils.cast(parse(), type, this.config);
                    }
                }
                objArr[i3] = objCast;
                if (this.lexer.token() == 15) {
                    break;
                }
                if (this.lexer.token() == 16) {
                    if (i3 == typeArr.length - 1) {
                        this.lexer.nextToken(15);
                    } else {
                        this.lexer.nextToken(2);
                    }
                    i3++;
                    i = 8;
                    i2 = 14;
                } else {
                    throw new JSONException("syntax error :" + JSONToken.name(this.lexer.token()));
                }
            }
            if (this.lexer.token() == 15) {
                this.lexer.nextToken(16);
                return objArr;
            }
            throw new JSONException("syntax error");
        }
        throw new JSONException("syntax error : " + this.lexer.tokenName());
    }

    public Object parse(PropertyProcessable propertyProcessable, Object obj) {
        String strScanSymbolUnQuoted;
        int i = 0;
        if (this.lexer.token() != 12) {
            String str = "syntax error, expect {, actual " + this.lexer.tokenName();
            if (obj instanceof String) {
                str = (str + ", fieldName ") + obj;
            }
            String str2 = (str + ", ") + this.lexer.info();
            JSONArray jSONArray = new JSONArray();
            parseArray(jSONArray, obj);
            if (jSONArray.size() == 1) {
                Object obj2 = jSONArray.get(0);
                if (obj2 instanceof JSONObject) {
                    return (JSONObject) obj2;
                }
            }
            throw new JSONException(str2);
        }
        ParseContext parseContext = this.context;
        while (true) {
            try {
                this.lexer.skipWhitespace();
                char current = this.lexer.getCurrent();
                if (this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                    while (current == ',') {
                        this.lexer.next();
                        this.lexer.skipWhitespace();
                        current = this.lexer.getCurrent();
                    }
                }
                if (current == '\"') {
                    strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, '\"');
                    this.lexer.skipWhitespace();
                    if (this.lexer.getCurrent() != ':') {
                        throw new JSONException("expect ':' at " + this.lexer.pos());
                    }
                } else {
                    if (current == '}') {
                        this.lexer.next();
                        this.lexer.resetStringPosition();
                        this.lexer.nextToken(16);
                        setContext(parseContext);
                        return propertyProcessable;
                    }
                    if (current == '\'') {
                        if (this.lexer.isEnabled(Feature.AllowSingleQuotes)) {
                            strScanSymbolUnQuoted = this.lexer.scanSymbol(this.symbolTable, '\'');
                            this.lexer.skipWhitespace();
                            if (this.lexer.getCurrent() != ':') {
                                throw new JSONException("expect ':' at " + this.lexer.pos());
                            }
                        } else {
                            throw new JSONException("syntax error");
                        }
                    } else if (this.lexer.isEnabled(Feature.AllowUnQuotedFieldNames)) {
                        strScanSymbolUnQuoted = this.lexer.scanSymbolUnQuoted(this.symbolTable);
                        this.lexer.skipWhitespace();
                        char current2 = this.lexer.getCurrent();
                        if (current2 != ':') {
                            throw new JSONException("expect ':' at " + this.lexer.pos() + ", actual " + current2);
                        }
                    } else {
                        throw new JSONException("syntax error");
                    }
                }
                this.lexer.next();
                this.lexer.skipWhitespace();
                this.lexer.getCurrent();
                this.lexer.resetStringPosition();
                Object object = null;
                if (strScanSymbolUnQuoted == JSON.DEFAULT_TYPE_KEY && !this.lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    Class<?> clsCheckAutoType = this.config.checkAutoType(this.lexer.scanSymbol(this.symbolTable, '\"'), null, this.lexer.getFeatures());
                    if (Map.class.isAssignableFrom(clsCheckAutoType)) {
                        this.lexer.nextToken(16);
                        if (this.lexer.token() == 13) {
                            this.lexer.nextToken(16);
                            setContext(parseContext);
                            return propertyProcessable;
                        }
                    } else {
                        ObjectDeserializer deserializer = this.config.getDeserializer(clsCheckAutoType);
                        this.lexer.nextToken(16);
                        setResolveStatus(2);
                        if (parseContext != null && !(obj instanceof Integer)) {
                            popContext();
                        }
                        Map map = (Map) deserializer.deserialze(this, clsCheckAutoType, obj);
                        setContext(parseContext);
                        return map;
                    }
                } else {
                    this.lexer.nextToken();
                    if (i != 0) {
                        setContext(parseContext);
                    }
                    Type type = propertyProcessable.getType(strScanSymbolUnQuoted);
                    if (this.lexer.token() == 8) {
                        this.lexer.nextToken();
                    } else {
                        object = parseObject(type, strScanSymbolUnQuoted);
                    }
                    propertyProcessable.apply(strScanSymbolUnQuoted, object);
                    setContext(parseContext, object, strScanSymbolUnQuoted);
                    setContext(parseContext);
                    int i2 = this.lexer.token();
                    if (i2 == 20 || i2 == 15) {
                        break;
                        break;
                    }
                    if (i2 == 13) {
                        this.lexer.nextToken();
                        setContext(parseContext);
                        return propertyProcessable;
                    }
                }
                i++;
            } catch (Throwable th) {
                setContext(parseContext);
                throw th;
            }
        }
        setContext(parseContext);
        return propertyProcessable;
    }

    public final void parseArray(Collection collection) {
        parseArray(collection, (Object) null);
    }

    public final void parseArray(Collection collection, Object obj) {
        Object object;
        Number numberDecimalValue;
        String strStringVal;
        Object time;
        JSONArray jSONArray;
        JSONLexer jSONLexer = this.lexer;
        if (jSONLexer.token() == 21 || jSONLexer.token() == 22) {
            jSONLexer.nextToken();
        }
        if (jSONLexer.token() == 14) {
            jSONLexer.nextToken(4);
            ParseContext parseContext = this.context;
            if (parseContext != null && parseContext.level > 512) {
                throw new JSONException("array level > 512");
            }
            setContext(collection, obj);
            int i = 0;
            while (true) {
                try {
                    try {
                        if (jSONLexer.isEnabled(Feature.AllowArbitraryCommas)) {
                            while (jSONLexer.token() == 16) {
                                jSONLexer.nextToken();
                            }
                        }
                        int i2 = jSONLexer.token();
                        if (i2 == 2) {
                            Number numberIntegerValue = jSONLexer.integerValue();
                            jSONLexer.nextToken(16);
                            object = numberIntegerValue;
                        } else if (i2 == 3) {
                            if (jSONLexer.isEnabled(Feature.UseBigDecimal)) {
                                numberDecimalValue = jSONLexer.decimalValue(true);
                            } else {
                                numberDecimalValue = jSONLexer.decimalValue(false);
                            }
                            object = numberDecimalValue;
                            jSONLexer.nextToken(16);
                        } else if (i2 == 4) {
                            strStringVal = jSONLexer.stringVal();
                            jSONLexer.nextToken(16);
                            if (jSONLexer.isEnabled(Feature.AllowISO8601DateFormat)) {
                                JSONScanner jSONScanner = new JSONScanner(strStringVal);
                                if (jSONScanner.scanISO8601DateIfMatch()) {
                                    object = strStringVal;
                                    time = strStringVal;
                                    time = jSONScanner.getCalendar().getTime();
                                }
                                object = strStringVal;
                                time = strStringVal;
                                jSONScanner.close();
                                object = time;
                            }
                        } else if (i2 == 6) {
                            Boolean bool = Boolean.TRUE;
                            jSONLexer.nextToken(16);
                            object = bool;
                        } else if (i2 != 7) {
                            object = null;
                            object = null;
                            if (i2 == 8) {
                                jSONLexer.nextToken(4);
                            } else if (i2 == 12) {
                                object = parseObject(new JSONObject(jSONLexer.isEnabled(Feature.OrderedField)), Integer.valueOf(i));
                            } else {
                                if (i2 == 20) {
                                    throw new JSONException("unclosed jsonArray");
                                }
                                if (i2 == 23) {
                                    jSONLexer.nextToken(4);
                                } else if (i2 == 14) {
                                    jSONArray = new JSONArray();
                                    parseArray(jSONArray, Integer.valueOf(i));
                                    if (jSONLexer.isEnabled(Feature.UseObjectArray)) {
                                        object = jSONArray;
                                        object = jSONArray.toArray();
                                    }
                                } else if (i2 != 15) {
                                    object = parse();
                                } else {
                                    jSONLexer.nextToken(16);
                                    setContext(parseContext);
                                    return;
                                }
                            }
                        } else {
                            Boolean bool2 = Boolean.FALSE;
                            jSONLexer.nextToken(16);
                            object = bool2;
                        }
                        object = strStringVal;
                        object = jSONArray;
                        collection.add(object);
                        checkListResolve(collection);
                        if (jSONLexer.token() == 16) {
                            jSONLexer.nextToken(4);
                        }
                        i++;
                    } catch (ClassCastException e) {
                        throw new JSONException("unkown error", e);
                    }
                } catch (Throwable th) {
                    setContext(parseContext);
                    throw th;
                }
            }
        } else {
            throw new JSONException("syntax error, expect [, actual " + JSONToken.name(jSONLexer.token()) + ", pos " + jSONLexer.pos() + ", fieldName " + obj);
        }
    }

    public <T> T parseObject(Class<T> cls) {
        return (T) parseObject(cls, (Object) null);
    }

    public <T> T parseObject(Type type) {
        return (T) parseObject(type, (Object) null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> T parseObject(Type type, Object obj) {
        int i = this.lexer.token();
        if (i == 8) {
            this.lexer.nextToken();
            return (T) TypeUtils.optionalEmpty(type);
        }
        if (i == 4) {
            if (type == byte[].class) {
                T t = (T) this.lexer.bytesValue();
                this.lexer.nextToken();
                return t;
            }
            if (type == char[].class) {
                String strStringVal = this.lexer.stringVal();
                this.lexer.nextToken();
                return (T) strStringVal.toCharArray();
            }
        }
        ObjectDeserializer deserializer = this.config.getDeserializer(type);
        try {
            if (deserializer.getClass() == JavaBeanDeserializer.class) {
                if (this.lexer.token() != 12 && this.lexer.token() != 14) {
                    throw new JSONException("syntax error,expect start with { or [,but actually start with " + this.lexer.tokenName());
                }
                return (T) ((JavaBeanDeserializer) deserializer).deserialze(this, type, obj, 0);
            }
            return (T) deserializer.deserialze(this, type, obj);
        } catch (JSONException e) {
            throw e;
        } catch (Throwable th) {
            throw new JSONException(th.getMessage(), th);
        }
    }

    public void parseObject(Object obj) {
        Object objDeserialze;
        Class<?> cls = obj.getClass();
        ObjectDeserializer deserializer = this.config.getDeserializer(cls);
        JavaBeanDeserializer javaBeanDeserializer = deserializer instanceof JavaBeanDeserializer ? (JavaBeanDeserializer) deserializer : null;
        if (this.lexer.token() != 12 && this.lexer.token() != 16) {
            throw new JSONException("syntax error, expect {, actual " + this.lexer.tokenName());
        }
        while (true) {
            String strScanSymbol = this.lexer.scanSymbol(this.symbolTable);
            if (strScanSymbol == null) {
                if (this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                } else if (this.lexer.token() != 16 || !this.lexer.isEnabled(Feature.AllowArbitraryCommas)) {
                }
            }
            FieldDeserializer fieldDeserializer = javaBeanDeserializer != null ? javaBeanDeserializer.getFieldDeserializer(strScanSymbol) : null;
            if (fieldDeserializer == null) {
                if (this.lexer.isEnabled(Feature.IgnoreNotMatch)) {
                    this.lexer.nextTokenWithColon();
                    parse();
                    if (this.lexer.token() == 13) {
                        this.lexer.nextToken();
                        return;
                    }
                } else {
                    throw new JSONException("setter not found, class " + cls.getName() + ", property " + strScanSymbol);
                }
            } else {
                FieldInfo fieldInfo = fieldDeserializer.fieldInfo;
                Class<?> cls2 = fieldInfo.fieldClass;
                Type type = fieldInfo.fieldType;
                if (cls2 == Integer.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = IntegerCodec.instance.deserialze(this, type, null);
                } else if (cls2 == String.class) {
                    this.lexer.nextTokenWithColon(4);
                    objDeserialze = StringCodec.deserialze(this);
                } else if (cls2 == Long.TYPE) {
                    this.lexer.nextTokenWithColon(2);
                    objDeserialze = LongCodec.instance.deserialze(this, type, null);
                } else {
                    ObjectDeserializer deserializer2 = this.config.getDeserializer(cls2, type);
                    this.lexer.nextTokenWithColon(deserializer2.getFastMatchToken());
                    objDeserialze = deserializer2.deserialze(this, type, null);
                }
                fieldDeserializer.setValue(obj, objDeserialze);
                if (this.lexer.token() != 16 && this.lexer.token() == 13) {
                    this.lexer.nextToken(16);
                    return;
                }
            }
        }
    }

    public Object parseObject(Map map) {
        return parseObject(map, (Object) null);
    }

    public JSONObject parseObject() {
        Object object = parseObject((Map) new JSONObject(this.lexer.isEnabled(Feature.OrderedField)));
        if (object instanceof JSONObject) {
            return (JSONObject) object;
        }
        if (object == null) {
            return null;
        }
        return new JSONObject((Map<String, Object>) object);
    }
}
