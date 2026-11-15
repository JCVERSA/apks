package kotlin.text;

import androidx.media3.exoplayer.upstream.CmcdData;
import com.transsion.tranplayer.MediaPlayer;
import defpackage.c26;
import defpackage.c74;
import defpackage.d26;
import defpackage.d81;
import defpackage.e74;
import defpackage.hr8;
import defpackage.j1a;
import defpackage.nt1;
import defpackage.pc9;
import defpackage.s74;
import defpackage.sc9;
import defpackage.tc9;
import defpackage.wh1;
import defpackage.wn8;
import defpackage.x71;
import defpackage.y45;
import defpackage.yx3;
import defpackage.z45;
import defpackage.zc9;
import defpackage.zfb;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.c;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.FunctionReferenceImpl;
import org.mozilla.javascript.ES6Iterator;

@Metadata(d1 = {"\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\b\u0011\u0018\u0000 =2\u00060\u0001j\u0002`\u0002:\u0002>?B\u0011\b\u0001\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0004\b\u0005\u0010\u0006B\u0011\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007¢\u0006\u0004\b\u0005\u0010\tB\u0019\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u0005\u0010\fB\u001f\b\u0016\u0012\u0006\u0010\b\u001a\u00020\u0007\u0012\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r¢\u0006\u0004\b\u0005\u0010\u000fJ\u000f\u0010\u0011\u001a\u00020\u0010H\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0018\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013H\u0086\u0004¢\u0006\u0004\b\u0016\u0010\u0017J\u0015\u0010\u0018\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b\u0018\u0010\u0017J!\u0010\u001c\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001c\u0010\u001dJ%\u0010\u001f\u001a\b\u0012\u0004\u0012\u00020\u001b0\u001e2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010\u001a\u001a\u00020\u0019¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u0013¢\u0006\u0004\b!\u0010\"J!\u0010$\u001a\u0004\u0018\u00010\u001b2\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0019H\u0007¢\u0006\u0004\b$\u0010\u001dJ\u001f\u0010%\u001a\u00020\u00152\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010#\u001a\u00020\u0019H\u0007¢\u0006\u0004\b%\u0010&J\u001d\u0010(\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0007¢\u0006\u0004\b(\u0010)J)\u0010(\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0012\u0010+\u001a\u000e\u0012\u0004\u0012\u00020\u001b\u0012\u0004\u0012\u00020\u00130*¢\u0006\u0004\b(\u0010,J\u001d\u0010-\u001a\u00020\u00072\u0006\u0010\u0014\u001a\u00020\u00132\u0006\u0010'\u001a\u00020\u0007¢\u0006\u0004\b-\u0010)J%\u00100\u001a\b\u0012\u0004\u0012\u00020\u00070/2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010.\u001a\u00020\u0019¢\u0006\u0004\b0\u00101J'\u00102\u001a\b\u0012\u0004\u0012\u00020\u00070\u001e2\u0006\u0010\u0014\u001a\u00020\u00132\b\b\u0002\u0010.\u001a\u00020\u0019H\u0007¢\u0006\u0004\b2\u0010 J\u000f\u00103\u001a\u00020\u0007H\u0016¢\u0006\u0004\b3\u00104J\r\u00105\u001a\u00020\u0003¢\u0006\u0004\b5\u00106R\u0014\u0010\u0004\u001a\u00020\u00038\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0004\u00107R\u001e\u00108\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\r8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b8\u00109R\u0011\u0010\b\u001a\u00020\u00078F¢\u0006\u0006\u001a\u0004\b:\u00104R\u0017\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\n0\r8F¢\u0006\u0006\u001a\u0004\b;\u0010<¨\u0006@"}, d2 = {"Lkotlin/text/Regex;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "Ljava/util/regex/Pattern;", "nativePattern", MethodDecl.initName, "(Ljava/util/regex/Pattern;)V", "", "pattern", "(Ljava/lang/String;)V", "Lkotlin/text/RegexOption;", "option", "(Ljava/lang/String;Lkotlin/text/RegexOption;)V", "", "options", "(Ljava/lang/String;Ljava/util/Set;)V", "", "writeReplace", "()Ljava/lang/Object;", "", "input", "", "matches", "(Ljava/lang/CharSequence;)Z", "containsMatchIn", "", "startIndex", "Lc26;", "find", "(Ljava/lang/CharSequence;I)Lc26;", "Lpc9;", "findAll", "(Ljava/lang/CharSequence;I)Lpc9;", "matchEntire", "(Ljava/lang/CharSequence;)Lc26;", "index", "matchAt", "matchesAt", "(Ljava/lang/CharSequence;I)Z", "replacement", "replace", "(Ljava/lang/CharSequence;Ljava/lang/String;)Ljava/lang/String;", "Lkotlin/Function1;", "transform", "(Ljava/lang/CharSequence;Le74;)Ljava/lang/String;", "replaceFirst", "limit", "", "split", "(Ljava/lang/CharSequence;I)Ljava/util/List;", "splitToSequence", "toString", "()Ljava/lang/String;", "toPattern", "()Ljava/util/regex/Pattern;", "Ljava/util/regex/Pattern;", "_options", "Ljava/util/Set;", "getPattern", "getOptions", "()Ljava/util/Set;", "Companion", "Serialized", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
public final class Regex implements Serializable {

    public static final Companion INSTANCE = new Companion(null);
    private Set<? extends RegexOption> _options;
    private final Pattern nativePattern;

    @Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u0000\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00122\u00060\u0001j\u0002`\u0002:\u0001\u0013B\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0005¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\n\u001a\u00020\tH\u0002¢\u0006\u0004\b\n\u0010\u000bR\u0017\u0010\u0004\u001a\u00020\u00038\u0006¢\u0006\f\n\u0004\b\u0004\u0010\f\u001a\u0004\b\r\u0010\u000eR\u0017\u0010\u0006\u001a\u00020\u00058\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u000f\u001a\u0004\b\u0010\u0010\u0011¨\u0006\u0014"}, d2 = {"Lkotlin/text/Regex$Serialized;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "pattern", "", "flags", MethodDecl.initName, "(Ljava/lang/String;I)V", "", "readResolve", "()Ljava/lang/Object;", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "I", "getFlags", "()I", "Companion", CmcdData.OBJECT_TYPE_AUDIO_ONLY, "kotlin-stdlib"}, k = 1, mv = {2, 1, 0}, xi = 48)
    public static final class Serialized implements Serializable {
        private static final long serialVersionUID = 0;
        private final int flags;
        private final String pattern;

        public Serialized(String str, int i) {
            y45.j(str, "pattern");
            this.pattern = str;
            this.flags = i;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            y45.i(patternCompile, "compile(...)");
            return new Regex(patternCompile);
        }

        public final int getFlags() {
            return this.flags;
        }

        public final String getPattern() {
            return this.pattern;
        }
    }

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final int b(int i) {
            return (i & 2) != 0 ? i | 64 : i;
        }

        public Companion() {
        }
    }

    public static final class b implements e74 {
        public final int b;

        public b(int i) {
            this.b = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override
        public final Boolean invoke(Enum r2) {
            yx3 yx3Var = (yx3) r2;
            return Boolean.valueOf((this.b & yx3Var.getMask()) == yx3Var.getValue());
        }
    }

    @Metadata(k = 3, mv = {2, 1, 0}, xi = 48)
    public class AnonymousClass2 extends FunctionReferenceImpl implements e74 {
        public static final AnonymousClass2 INSTANCE = new AnonymousClass2();

        public AnonymousClass2() {
            super(1, c26.class, ES6Iterator.NEXT_METHOD, "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override
        public final c26 invoke(c26 c26Var) {
            y45.j(c26Var, "p0");
            return c26Var.next();
        }
    }

    @Metadata(d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Lsc9;", "", "Lzfb;", "<anonymous>", "(Lsc9;)V"}, k = 3, mv = {2, 1, 0})
    @nt1(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", l = {275, 283, MediaPlayer.Event.VideoSize}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends RestrictedSuspendLambda implements s74 {
        final CharSequence $input;
        final int $limit;
        int I$0;
        private Object L$0;
        Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CharSequence charSequence, int i, wh1<? super AnonymousClass1> wh1Var) {
            super(2, wh1Var);
            this.$input = charSequence;
            this.$limit = i;
        }

        @Override
        public final wh1<zfb> create(Object obj, wh1<?> wh1Var) {
            AnonymousClass1 anonymousClass1 = Regex.this.new AnonymousClass1(this.$input, this.$limit, wh1Var);
            anonymousClass1.L$0 = obj;
            return anonymousClass1;
        }

        @Override
        public final Object invoke(sc9 sc9Var, wh1<? super zfb> wh1Var) {
            return ((AnonymousClass1) create(sc9Var, wh1Var)).invokeSuspend(zfb.a);
        }

        /* JADX WARN: Code duplicated, block: B:20:0x0070 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:23:0x007b  */
        /* JADX WARN: Code duplicated, block: B:27:0x009c A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x006e -> B:21:0x0071). Please report as a decompilation issue!!! */
        @Override
        public final Object invokeSuspend(Object obj) {
            sc9 sc9Var;
            Matcher matcher;
            int i;
            String string;
            String string2;
            Object objF = z45.f();
            int i2 = this.label;
            if (i2 == 0) {
                c.b(obj);
                sc9 sc9Var2 = (sc9) this.L$0;
                Matcher matcher2 = Regex.this.nativePattern.matcher(this.$input);
                if (this.$limit != 1 && matcher2.find()) {
                    int iEnd = 0;
                    sc9Var = sc9Var2;
                    matcher = matcher2;
                    i = 0;
                    string = this.$input.subSequence(iEnd, matcher.start()).toString();
                    this.L$0 = sc9Var;
                    this.L$1 = matcher;
                    this.I$0 = i;
                    this.label = 2;
                    if (sc9Var.b(string, this) == objF) {
                        return objF;
                    }
                    iEnd = matcher.end();
                    i++;
                    if (i != this.$limit - 1) {
                    }
                    CharSequence charSequence = this.$input;
                    string2 = charSequence.subSequence(iEnd, charSequence.length()).toString();
                    this.L$0 = null;
                    this.L$1 = null;
                    this.label = 3;
                    if (sc9Var.b(string2, this) == objF) {
                        return objF;
                    }
                    return zfb.a;
                }
                String string3 = this.$input.toString();
                this.label = 1;
                if (sc9Var2.b(string3, this) == objF) {
                    return objF;
                }
            } else {
                if (i2 != 1) {
                    if (i2 == 2) {
                        i = this.I$0;
                        Matcher matcher3 = (Matcher) this.L$1;
                        sc9Var = (sc9) this.L$0;
                        c.b(obj);
                        matcher = matcher3;
                        iEnd = matcher.end();
                        i++;
                        if (i != this.$limit - 1 || !matcher.find()) {
                            CharSequence charSequence2 = this.$input;
                            string2 = charSequence2.subSequence(iEnd, charSequence2.length()).toString();
                            this.L$0 = null;
                            this.L$1 = null;
                            this.label = 3;
                            if (sc9Var.b(string2, this) == objF) {
                                return objF;
                            }
                        }
                        string = this.$input.subSequence(iEnd, matcher.start()).toString();
                        this.L$0 = sc9Var;
                        this.L$1 = matcher;
                        this.I$0 = i;
                        this.label = 2;
                        if (sc9Var.b(string, this) == objF) {
                            return objF;
                        }
                        iEnd = matcher.end();
                        i++;
                        if (i != this.$limit - 1) {
                        }
                        CharSequence charSequence3 = this.$input;
                        string2 = charSequence3.subSequence(iEnd, charSequence3.length()).toString();
                        this.L$0 = null;
                        this.L$1 = null;
                        this.label = 3;
                        if (sc9Var.b(string2, this) == objF) {
                            return objF;
                        }
                    } else {
                        if (i2 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        c.b(obj);
                    }
                    return zfb.a;
                }
                c.b(obj);
            }
            return zfb.a;
        }
    }

    public Regex(Pattern pattern) {
        y45.j(pattern, "nativePattern");
        this.nativePattern = pattern;
    }

    public static c26 find$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.find(charSequence, i);
    }

    public static pc9 findAll$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.findAll(charSequence, i);
    }

    public static List split$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.split(charSequence, i);
    }

    public static pc9 splitToSequence$default(Regex regex, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return regex.splitToSequence(charSequence, i);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        y45.i(strPattern, "pattern(...)");
        return new Serialized(strPattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(CharSequence input) {
        y45.j(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    public final c26 find(CharSequence input, int startIndex) {
        y45.j(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        y45.i(matcher, "matcher(...)");
        return hr8.f(matcher, startIndex, input);
    }

    public final pc9 findAll(final CharSequence input, final int startIndex) {
        y45.j(input, "input");
        if (startIndex >= 0 && startIndex <= input.length()) {
            return zc9.o(new c74() {
                @Override
                public final Object invoke() {
                    return this.b.find(input, startIndex);
                }
            }, AnonymousClass2.INSTANCE);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + startIndex + ", input length: " + input.length());
    }

    public final Set<RegexOption> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(RegexOption.class);
        y45.g(enumSetAllOf);
        d81.L(enumSetAllOf, new b(iFlags));
        Set<RegexOption> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        y45.i(setUnmodifiableSet, "unmodifiableSet(...)");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        y45.i(strPattern, "pattern(...)");
        return strPattern;
    }

    public final c26 matchAt(CharSequence input, int index) {
        y45.j(input, "input");
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length());
        if (!matcherRegion.lookingAt()) {
            return null;
        }
        y45.g(matcherRegion);
        return new d26(matcherRegion, input);
    }

    public final c26 matchEntire(CharSequence input) {
        y45.j(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        y45.i(matcher, "matcher(...)");
        return hr8.g(matcher, input);
    }

    public final boolean matches(CharSequence input) {
        y45.j(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    public final boolean matchesAt(CharSequence input, int index) {
        y45.j(input, "input");
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(index, input.length()).lookingAt();
    }

    public final String replace(CharSequence input, String replacement) {
        y45.j(input, "input");
        y45.j(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        y45.i(strReplaceAll, "replaceAll(...)");
        return strReplaceAll;
    }

    public final String replaceFirst(CharSequence input, String replacement) {
        y45.j(input, "input");
        y45.j(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        y45.i(strReplaceFirst, "replaceFirst(...)");
        return strReplaceFirst;
    }

    public final List<String> split(CharSequence input, int limit) {
        y45.j(input, "input");
        j1a.J0(limit);
        Matcher matcher = this.nativePattern.matcher(input);
        if (limit == 1 || !matcher.find()) {
            return x71.e(input.toString());
        }
        ArrayList arrayList = new ArrayList(limit > 0 ? wn8.g(limit, 10) : 10);
        int i = limit - 1;
        int iEnd = 0;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i >= 0 && arrayList.size() == i) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    public final pc9 splitToSequence(CharSequence input, int limit) {
        y45.j(input, "input");
        j1a.J0(limit);
        return tc9.b(new AnonymousClass1(input, limit, null));
    }

    public final Pattern getNativePattern() {
        return this.nativePattern;
    }

    public String toString() {
        String string = this.nativePattern.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    public final String replace(CharSequence input, e74 transform) {
        y45.j(input, "input");
        y45.j(transform, "transform");
        int iIntValue = 0;
        c26 c26VarFind$default = find$default(this, input, 0, 2, null);
        if (c26VarFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            sb.append(input, iIntValue, c26VarFind$default.c().getStart().intValue());
            sb.append((CharSequence) transform.invoke(c26VarFind$default));
            iIntValue = c26VarFind$default.c().getEndInclusive().intValue() + 1;
            c26VarFind$default = c26VarFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (c26VarFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        String string = sb.toString();
        y45.i(string, "toString(...)");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String str) {
        y45.j(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        y45.i(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String str, RegexOption regexOption) {
        y45.j(str, "pattern");
        y45.j(regexOption, "option");
        Pattern patternCompile = Pattern.compile(str, INSTANCE.b(regexOption.getValue()));
        y45.i(patternCompile, "compile(...)");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Regex(String str, Set<? extends RegexOption> set) {
        y45.j(str, "pattern");
        y45.j(set, "options");
        Pattern patternCompile = Pattern.compile(str, INSTANCE.b(hr8.j(set)));
        y45.i(patternCompile, "compile(...)");
        this(patternCompile);
    }
}
