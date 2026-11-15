package androidx.datastore.preferences.core;

import androidx.datastore.core.CorruptionException;
import androidx.datastore.core.Serializer;
import androidx.datastore.preferences.PreferencesMapCompat;
import androidx.datastore.preferences.PreferencesProto;
import androidx.datastore.preferences.protobuf.ByteString;
import defpackage.i81;
import defpackage.wh1;
import defpackage.y45;
import defpackage.zfb;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.NoWhenBranchMatchedException;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\t\bÀ\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002¢\u0006\u0004\b\b\u0010\tJ'\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\fH\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u0018\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0011H\u0096@¢\u0006\u0004\b\u0013\u0010\u0014J \u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u00022\u0006\u0010\u0017\u001a\u00020\u0016H\u0096@¢\u0006\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001a\u001a\u00020\n8\u0000X\u0080T¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR\u0014\u0010\u001e\u001a\u00020\u00028VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001d¨\u0006\u001f"}, d2 = {"Landroidx/datastore/preferences/core/PreferencesFileSerializer;", "Landroidx/datastore/core/Serializer;", "Landroidx/datastore/preferences/core/Preferences;", MethodDecl.initName, "()V", "", ES6Iterator.VALUE_PROPERTY, "Landroidx/datastore/preferences/PreferencesProto$Value;", "getValueProto", "(Ljava/lang/Object;)Landroidx/datastore/preferences/PreferencesProto$Value;", "", "name", "Landroidx/datastore/preferences/core/MutablePreferences;", "mutablePreferences", "Lzfb;", "addProtoEntryToPreferences", "(Ljava/lang/String;Landroidx/datastore/preferences/PreferencesProto$Value;Landroidx/datastore/preferences/core/MutablePreferences;)V", "Ljava/io/InputStream;", "input", "readFrom", "(Ljava/io/InputStream;Lwh1;)Ljava/lang/Object;", "t", "Ljava/io/OutputStream;", "output", "writeTo", "(Landroidx/datastore/preferences/core/Preferences;Ljava/io/OutputStream;Lwh1;)Ljava/lang/Object;", "fileExtension", "Ljava/lang/String;", "getDefaultValue", "()Landroidx/datastore/preferences/core/Preferences;", "defaultValue", "datastore-preferences-core_release"}, k = 1, mv = {1, 8, 0}, xi = 48)
public final class PreferencesFileSerializer implements Serializer<Preferences> {
    public static final PreferencesFileSerializer INSTANCE = new PreferencesFileSerializer();
    public static final String fileExtension = "preferences_pb";

    @Metadata(k = 3, mv = {1, 8, 0}, xi = 48)
    public class WhenMappings {
        public static final int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[PreferencesProto.Value.ValueCase.values().length];
            try {
                iArr[PreferencesProto.Value.ValueCase.BOOLEAN.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.FLOAT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.DOUBLE.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.INTEGER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.LONG.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.STRING.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.STRING_SET.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.BYTES.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                iArr[PreferencesProto.Value.ValueCase.VALUE_NOT_SET.ordinal()] = 9;
            } catch (NoSuchFieldError unused9) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    private PreferencesFileSerializer() {
    }

    private final void addProtoEntryToPreferences(String name, PreferencesProto.Value value, MutablePreferences mutablePreferences) throws CorruptionException {
        PreferencesProto.Value.ValueCase valueCase = value.getValueCase();
        switch (valueCase == null ? -1 : WhenMappings.$EnumSwitchMapping$0[valueCase.ordinal()]) {
            case -1:
                throw new CorruptionException("Value case is null.", null, 2, null);
            case 0:
            default:
                throw new NoWhenBranchMatchedException();
            case 1:
                mutablePreferences.set(PreferencesKeys.booleanKey(name), Boolean.valueOf(value.getBoolean()));
                return;
            case 2:
                mutablePreferences.set(PreferencesKeys.floatKey(name), Float.valueOf(value.getFloat()));
                return;
            case 3:
                mutablePreferences.set(PreferencesKeys.doubleKey(name), Double.valueOf(value.getDouble()));
                return;
            case 4:
                mutablePreferences.set(PreferencesKeys.intKey(name), Integer.valueOf(value.getInteger()));
                return;
            case 5:
                mutablePreferences.set(PreferencesKeys.longKey(name), Long.valueOf(value.getLong()));
                return;
            case 6:
                Preferences.Key<String> keyStringKey = PreferencesKeys.stringKey(name);
                String string = value.getString();
                y45.i(string, "value.string");
                mutablePreferences.set(keyStringKey, string);
                return;
            case 7:
                Preferences.Key<Set<String>> keyStringSetKey = PreferencesKeys.stringSetKey(name);
                List<String> stringsList = value.getStringSet().getStringsList();
                y45.i(stringsList, "value.stringSet.stringsList");
                mutablePreferences.set(keyStringSetKey, i81.g1(stringsList));
                return;
            case 8:
                Preferences.Key<byte[]> keyByteArrayKey = PreferencesKeys.byteArrayKey(name);
                byte[] byteArray = value.getBytes().toByteArray();
                y45.i(byteArray, "value.bytes.toByteArray()");
                mutablePreferences.set(keyByteArrayKey, byteArray);
                return;
            case 9:
                throw new CorruptionException("Value not set.", null, 2, null);
        }
    }

    private final PreferencesProto.Value getValueProto(Object value) {
        if (value instanceof Boolean) {
            PreferencesProto.Value valueBuild = PreferencesProto.Value.newBuilder().setBoolean(((Boolean) value).booleanValue()).build();
            y45.i(valueBuild, "newBuilder().setBoolean(value).build()");
            return valueBuild;
        }
        if (value instanceof Float) {
            PreferencesProto.Value valueBuild2 = PreferencesProto.Value.newBuilder().setFloat(((Number) value).floatValue()).build();
            y45.i(valueBuild2, "newBuilder().setFloat(value).build()");
            return valueBuild2;
        }
        if (value instanceof Double) {
            PreferencesProto.Value valueBuild3 = PreferencesProto.Value.newBuilder().setDouble(((Number) value).doubleValue()).build();
            y45.i(valueBuild3, "newBuilder().setDouble(value).build()");
            return valueBuild3;
        }
        if (value instanceof Integer) {
            PreferencesProto.Value valueBuild4 = PreferencesProto.Value.newBuilder().setInteger(((Number) value).intValue()).build();
            y45.i(valueBuild4, "newBuilder().setInteger(value).build()");
            return valueBuild4;
        }
        if (value instanceof Long) {
            PreferencesProto.Value valueBuild5 = PreferencesProto.Value.newBuilder().setLong(((Number) value).longValue()).build();
            y45.i(valueBuild5, "newBuilder().setLong(value).build()");
            return valueBuild5;
        }
        if (value instanceof String) {
            PreferencesProto.Value valueBuild6 = PreferencesProto.Value.newBuilder().setString((String) value).build();
            y45.i(valueBuild6, "newBuilder().setString(value).build()");
            return valueBuild6;
        }
        if (value instanceof Set) {
            PreferencesProto.Value.Builder builderNewBuilder = PreferencesProto.Value.newBuilder();
            PreferencesProto.StringSet.Builder builderNewBuilder2 = PreferencesProto.StringSet.newBuilder();
            y45.h(value, "null cannot be cast to non-null type kotlin.collections.Set<kotlin.String>");
            PreferencesProto.Value valueBuild7 = builderNewBuilder.setStringSet(builderNewBuilder2.addAllStrings((Set) value)).build();
            y45.i(valueBuild7, "newBuilder()\n           …                 .build()");
            return valueBuild7;
        }
        if (value instanceof byte[]) {
            PreferencesProto.Value valueBuild8 = PreferencesProto.Value.newBuilder().setBytes(ByteString.copyFrom((byte[]) value)).build();
            y45.i(valueBuild8, "newBuilder().setBytes(By….copyFrom(value)).build()");
            return valueBuild8;
        }
        throw new IllegalStateException("PreferencesSerializer does not support type: " + value.getClass().getName());
    }

    @Override
    public Object readFrom(InputStream inputStream, wh1<? super Preferences> wh1Var) throws IOException {
        PreferencesProto.PreferenceMap from = PreferencesMapCompat.INSTANCE.readFrom(inputStream);
        MutablePreferences mutablePreferencesCreateMutable = PreferencesFactory.createMutable(new Preferences.Pair[0]);
        Map<String, PreferencesProto.Value> preferencesMap = from.getPreferencesMap();
        y45.i(preferencesMap, "preferencesProto.preferencesMap");
        for (Map.Entry<String, PreferencesProto.Value> entry : preferencesMap.entrySet()) {
            String key = entry.getKey();
            PreferencesProto.Value value = entry.getValue();
            PreferencesFileSerializer preferencesFileSerializer = INSTANCE;
            y45.i(key, "name");
            y45.i(value, ES6Iterator.VALUE_PROPERTY);
            preferencesFileSerializer.addProtoEntryToPreferences(key, value, mutablePreferencesCreateMutable);
        }
        return mutablePreferencesCreateMutable.toPreferences();
    }

    @Override
    public Object writeTo(Preferences preferences, OutputStream outputStream, wh1 wh1Var) {
        return writeTo2(preferences, outputStream, (wh1<? super zfb>) wh1Var);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override
    public Preferences getDefaultValue() {
        return PreferencesFactory.createEmpty();
    }

    public Object writeTo2(Preferences preferences, OutputStream outputStream, wh1<? super zfb> wh1Var) throws IOException {
        Map<Preferences.Key<?>, Object> mapAsMap = preferences.asMap();
        PreferencesProto.PreferenceMap.Builder builderNewBuilder = PreferencesProto.PreferenceMap.newBuilder();
        for (Map.Entry<Preferences.Key<?>, Object> entry : mapAsMap.entrySet()) {
            builderNewBuilder.putPreferences(entry.getKey().getName(), getValueProto(entry.getValue()));
        }
        builderNewBuilder.build().writeTo(outputStream);
        return zfb.a;
    }
}
