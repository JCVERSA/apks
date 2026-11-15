package androidx.room;

import androidx.annotation.RestrictTo;
import com.transsion.livecaption.constant.ICode;
import defpackage.d81;
import defpackage.e74;
import defpackage.i81;
import defpackage.q15;
import defpackage.u15;
import defpackage.u74;
import defpackage.x71;
import defpackage.xe9;
import defpackage.y45;
import defpackage.y71;
import defpackage.z71;
import defpackage.zfb;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.NoSuchElementException;
import java.util.Set;
import javassist.compiler.ast.MethodDecl;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Ref$ObjectRef;

@Metadata(d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0015\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010!\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001:\u0003\u001d\u001e\u001fB\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J7\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00042\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0012\u0010\u0007\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00050\u00040\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJQ\u0010\u0013\u001a\u00020\u00112\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\f0\u000b2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042$\u0010\u0012\u001a \u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\b\u0012\u0004\u0012\u00020\f0\u000b\u0012\u0004\u0012\u00020\u00110\u000fH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J]\u0010\u001b\u001a\u00020\u0011\"\u0004\b\u0000\u0010\u00152\u0012\u0010\r\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b0\u000b2\u000e\b\u0002\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u00102\u0018\u0010\u001a\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u000b\u0012\u0004\u0012\u00020\u00110\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001c¨\u0006 "}, d2 = {"Landroidx/room/AmbiguousColumnResolver;", "", MethodDecl.initName, "()V", "", "", "resultColumns", "mappings", "", "resolve", "([Ljava/lang/String;[[Ljava/lang/String;)[[I", "", "Landroidx/room/AmbiguousColumnResolver$ResultColumn;", ICode.CALL.CALL_KEY_CONTENT, "pattern", "Lkotlin/Function3;", "", "Lzfb;", "onHashMatch", "rabinKarpSearch", "(Ljava/util/List;[Ljava/lang/String;Lu74;)V", "T", "", "current", "depth", "Lkotlin/Function1;", "block", "dfs", "(Ljava/util/List;Ljava/util/List;ILe74;)V", "Match", "ResultColumn", "Solution", "room-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
public final class AmbiguousColumnResolver {
    public static final AmbiguousColumnResolver INSTANCE = new AmbiguousColumnResolver();

    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\b\n\u0002\b\n\b\u0002\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\u0004\b\u0007\u0010\bR\u0017\u0010\u0003\u001a\u00020\u00028\u0006¢\u0006\f\n\u0004\b\u0003\u0010\t\u001a\u0004\b\n\u0010\u000bR\u001d\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u00048\u0006¢\u0006\f\n\u0004\b\u0006\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u000f"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Match;", "", "Lu15;", "resultRange", "", "", "resultIndices", MethodDecl.initName, "(Lu15;Ljava/util/List;)V", "Lu15;", "getResultRange", "()Lu15;", "Ljava/util/List;", "getResultIndices", "()Ljava/util/List;", "room-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Match {
        private final List<Integer> resultIndices;
        private final u15 resultRange;

        public Match(u15 u15Var, List<Integer> list) {
            y45.j(u15Var, "resultRange");
            y45.j(list, "resultIndices");
            this.resultRange = u15Var;
            this.resultIndices = list;
        }

        public final List<Integer> getResultIndices() {
            return this.resultIndices;
        }

        public final u15 getResultRange() {
            return this.resultRange;
        }
    }

    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u0082\b\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÆ\u0003J\u001d\u0010\r\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u0011\u001a\u00020\u0005HÖ\u0001J\t\u0010\u0012\u001a\u00020\u0003HÖ\u0001R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u0007\u0010\bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\n¨\u0006\u0013"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$ResultColumn;", "", "name", "", "index", "", "(Ljava/lang/String;I)V", "getIndex", "()I", "getName", "()Ljava/lang/String;", "component1", "component2", "copy", "equals", "", "other", "hashCode", "toString", "room-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class ResultColumn {
        private final int index;
        private final String name;

        public ResultColumn(String str, int i) {
            y45.j(str, "name");
            this.name = str;
            this.index = i;
        }

        public static ResultColumn copy$default(ResultColumn resultColumn, String str, int i, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = resultColumn.name;
            }
            if ((i2 & 2) != 0) {
                i = resultColumn.index;
            }
            return resultColumn.copy(str, i);
        }

        public final String getName() {
            return this.name;
        }

        public final int getIndex() {
            return this.index;
        }

        public final ResultColumn copy(String name, int index) {
            y45.j(name, "name");
            return new ResultColumn(name, index);
        }

        public boolean equals(Object other) {
            if (this == other) {
                return true;
            }
            if (!(other instanceof ResultColumn)) {
                return false;
            }
            ResultColumn resultColumn = (ResultColumn) other;
            return y45.e(this.name, resultColumn.name) && this.index == resultColumn.index;
        }

        public final int getIndex() {
            return this.index;
        }

        public final String getName() {
            return this.name;
        }

        public int hashCode() {
            return (this.name.hashCode() * 31) + Integer.hashCode(this.index);
        }

        public String toString() {
            return "ResultColumn(name=" + this.name + ", index=" + this.index + ')';
        }
    }

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u000f\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u000b\b\u0002\u0018\u0000 \u00102\b\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0010B#\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\u0006¢\u0006\u0002\u0010\bJ\u0011\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0000H\u0096\u0002R\u0011\u0010\u0005\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\t\u0010\nR\u0017\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0007\u001a\u00020\u0006¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\n¨\u0006\u0011"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution;", "", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "coverageOffset", "", "overlaps", "(Ljava/util/List;II)V", "getCoverageOffset", "()I", "getMatches", "()Ljava/util/List;", "getOverlaps", "compareTo", "other", "Companion", "room-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
    public static final class Solution implements Comparable<Solution> {

        public static final Companion INSTANCE = new Companion(null);
        private static final Solution NO_SOLUTION = new Solution(y71.k(), Integer.MAX_VALUE, Integer.MAX_VALUE);
        private final int coverageOffset;
        private final List<Match> matches;
        private final int overlaps;

        @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0014\u0010\u0007\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\n0\tR\u0011\u0010\u0003\u001a\u00020\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u000b"}, d2 = {"Landroidx/room/AmbiguousColumnResolver$Solution$Companion;", "", "()V", "NO_SOLUTION", "Landroidx/room/AmbiguousColumnResolver$Solution;", "getNO_SOLUTION", "()Landroidx/room/AmbiguousColumnResolver$Solution;", "build", "matches", "", "Landroidx/room/AmbiguousColumnResolver$Match;", "room-common"}, k = 1, mv = {1, 8, 0}, xi = 48)
        public static final class Companion {
            public Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public final Solution build(List<Match> matches) {
                y45.j(matches, "matches");
                List<Match> list = matches;
                int i = 0;
                int iC = 0;
                for (Match match : list) {
                    iC += ((match.getResultRange().c() - match.getResultRange().b()) + 1) - match.getResultIndices().size();
                }
                Iterator<T> it = list.iterator();
                if (!it.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iB = ((Match) it.next()).getResultRange().b();
                while (it.hasNext()) {
                    int iB2 = ((Match) it.next()).getResultRange().b();
                    if (iB > iB2) {
                        iB = iB2;
                    }
                }
                Iterator<T> it2 = list.iterator();
                if (!it2.hasNext()) {
                    throw new NoSuchElementException();
                }
                int iC2 = ((Match) it2.next()).getResultRange().c();
                while (it2.hasNext()) {
                    int iC3 = ((Match) it2.next()).getResultRange().c();
                    if (iC2 < iC3) {
                        iC2 = iC3;
                    }
                }
                Iterable u15Var = new u15(iB, iC2);
                if (!(u15Var instanceof Collection) || !((Collection) u15Var).isEmpty()) {
                    Iterator it3 = u15Var.iterator();
                    int i2 = 0;
                    while (it3.hasNext()) {
                        int iNextInt = ((q15) it3).nextInt();
                        Iterator<T> it4 = list.iterator();
                        int i3 = 0;
                        while (it4.hasNext()) {
                            if (((Match) it4.next()).getResultRange().m(iNextInt)) {
                                i3++;
                            }
                            if (i3 > 1) {
                                i2++;
                                if (i2 >= 0) {
                                    break;
                                }
                                y71.t();
                                break;
                            }
                        }
                    }
                    i = i2;
                }
                return new Solution(matches, iC, i);
            }

            public final Solution getNO_SOLUTION() {
                return Solution.NO_SOLUTION;
            }

            private Companion() {
            }
        }

        public Solution(List<Match> list, int i, int i2) {
            y45.j(list, "matches");
            this.matches = list;
            this.coverageOffset = i;
            this.overlaps = i2;
        }

        public final int getCoverageOffset() {
            return this.coverageOffset;
        }

        public final List<Match> getMatches() {
            return this.matches;
        }

        public final int getOverlaps() {
            return this.overlaps;
        }

        @Override
        public int compareTo(Solution other) {
            y45.j(other, "other");
            int iL = y45.l(this.overlaps, other.overlaps);
            return iL != 0 ? iL : y45.l(this.coverageOffset, other.coverageOffset);
        }
    }

    private AmbiguousColumnResolver() {
    }

    private final <T> void dfs(List<? extends List<? extends T>> content, List<T> current, int depth, e74 block) {
        if (depth == content.size()) {
            block.invoke(i81.b1(current));
            return;
        }
        Iterator<T> it = content.get(depth).iterator();
        while (it.hasNext()) {
            current.add(it.next());
            INSTANCE.dfs(content, current, depth + 1, block);
            d81.J(current);
        }
    }

    public static void dfs$default(AmbiguousColumnResolver ambiguousColumnResolver, List list, List list2, int i, e74 e74Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            list2 = new ArrayList();
        }
        if ((i2 & 4) != 0) {
            i = 0;
        }
        ambiguousColumnResolver.dfs(list, list2, i, e74Var);
    }

    private final void rabinKarpSearch(List<ResultColumn> content, String[] pattern, u74 onHashMatch) {
        int i = 0;
        int iHashCode = 0;
        for (String str : pattern) {
            iHashCode += str.hashCode();
        }
        int length = pattern.length;
        Iterator<T> it = content.subList(0, length).iterator();
        int iHashCode2 = 0;
        while (it.hasNext()) {
            iHashCode2 += ((ResultColumn) it.next()).getName().hashCode();
        }
        while (true) {
            if (iHashCode == iHashCode2) {
                onHashMatch.invoke(Integer.valueOf(i), Integer.valueOf(length), content.subList(i, length));
            }
            int i2 = i + 1;
            int i3 = length + 1;
            if (i3 > content.size()) {
                return;
            }
            iHashCode2 = (iHashCode2 - content.get(i).getName().hashCode()) + content.get(length).getName().hashCode();
            i = i2;
            length = i3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
    public static final int[][] resolve(String[] resultColumns, String[][] mappings) {
        y45.j(resultColumns, "resultColumns");
        y45.j(mappings, "mappings");
        int length = resultColumns.length;
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            String strSubstring = resultColumns[i2];
            if (strSubstring.charAt(0) == '`' && strSubstring.charAt(strSubstring.length() - 1) == '`') {
                strSubstring = strSubstring.substring(1, strSubstring.length() - 1);
                y45.i(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
            }
            Locale locale = Locale.US;
            y45.i(locale, "US");
            String lowerCase = strSubstring.toLowerCase(locale);
            y45.i(lowerCase, "this as java.lang.String).toLowerCase(locale)");
            resultColumns[i2] = lowerCase;
        }
        int length2 = mappings.length;
        for (int i3 = 0; i3 < length2; i3++) {
            int length3 = mappings[i3].length;
            for (int i4 = 0; i4 < length3; i4++) {
                String[] strArr = mappings[i3];
                String str = strArr[i4];
                Locale locale2 = Locale.US;
                y45.i(locale2, "US");
                String lowerCase2 = str.toLowerCase(locale2);
                y45.i(lowerCase2, "this as java.lang.String).toLowerCase(locale)");
                strArr[i4] = lowerCase2;
            }
        }
        Set setB = xe9.b();
        for (String[] strArr2 : mappings) {
            d81.D(setB, strArr2);
        }
        Set setA = xe9.a(setB);
        List listC = x71.c();
        int length4 = resultColumns.length;
        int i5 = 0;
        int i6 = 0;
        while (i5 < length4) {
            String str2 = resultColumns[i5];
            int i7 = i6 + 1;
            if (setA.contains(str2)) {
                listC.add(new ResultColumn(str2, i6));
            }
            i5++;
            i6 = i7;
        }
        List<ResultColumn> listA = x71.a(listC);
        int length5 = mappings.length;
        final ArrayList arrayList = new ArrayList(length5);
        for (int i8 = 0; i8 < length5; i8++) {
            arrayList.add(new ArrayList());
        }
        int length6 = mappings.length;
        int i9 = 0;
        final int i10 = 0;
        while (i9 < length6) {
            final String[] strArr3 = mappings[i9];
            int i11 = i10 + 1;
            INSTANCE.rabinKarpSearch(listA, strArr3, new u74() {
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                /* JADX WARN: Multi-variable type inference failed */
                {
                    super(3);
                }

                @Override
                public Object invoke(Object obj, Object obj2, Object obj3) {
                    invoke(((Number) obj).intValue(), ((Number) obj2).intValue(), (List<AmbiguousColumnResolver.ResultColumn>) obj3);
                    return zfb.a;
                }

                public final void invoke(int i12, int i13, List<AmbiguousColumnResolver.ResultColumn> list) {
                    Object next;
                    y45.j(list, "resultColumnsSublist");
                    String[] strArr4 = strArr3;
                    ArrayList arrayList2 = new ArrayList(strArr4.length);
                    for (String str3 : strArr4) {
                        Iterator<T> it = list.iterator();
                        do {
                            if (!it.hasNext()) {
                                next = null;
                                break;
                            }
                            next = it.next();
                        } while (!y45.e(str3, ((AmbiguousColumnResolver.ResultColumn) next).getName()));
                        AmbiguousColumnResolver.ResultColumn resultColumn = (AmbiguousColumnResolver.ResultColumn) next;
                        if (resultColumn == null) {
                            return;
                        }
                        arrayList2.add(Integer.valueOf(resultColumn.getIndex()));
                    }
                    arrayList.get(i10).add(new AmbiguousColumnResolver.Match(new u15(i12, i13 - 1), arrayList2));
                }
            });
            if (((List) arrayList.get(i10)).isEmpty()) {
                ArrayList arrayList2 = new ArrayList(strArr3.length);
                int length7 = strArr3.length;
                for (int i12 = i; i12 < length7; i12++) {
                    String str3 = strArr3[i12];
                    List listC2 = x71.c();
                    for (ResultColumn resultColumn : listA) {
                        if (y45.e(str3, resultColumn.getName())) {
                            listC2.add(Integer.valueOf(resultColumn.getIndex()));
                        }
                    }
                    List listA2 = x71.a(listC2);
                    if (listA2.isEmpty()) {
                        throw new IllegalStateException(("Column " + str3 + " not found in result").toString());
                    }
                    arrayList2.add(listA2);
                }
                dfs$default(INSTANCE, arrayList2, null, 0, new e74() {
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    /* JADX WARN: Multi-variable type inference failed */
                    {
                        super(1);
                    }

                    @Override
                    public Object invoke(Object obj) {
                        invoke((List<Integer>) obj);
                        return zfb.a;
                    }

                    public final void invoke(List<Integer> list) {
                        y45.j(list, "indices");
                        List<Integer> list2 = list;
                        Iterator<T> it = list2.iterator();
                        if (!it.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int iIntValue = ((Number) it.next()).intValue();
                        while (it.hasNext()) {
                            int iIntValue2 = ((Number) it.next()).intValue();
                            if (iIntValue > iIntValue2) {
                                iIntValue = iIntValue2;
                            }
                        }
                        Iterator<T> it2 = list2.iterator();
                        if (!it2.hasNext()) {
                            throw new NoSuchElementException();
                        }
                        int iIntValue3 = ((Number) it2.next()).intValue();
                        while (it2.hasNext()) {
                            int iIntValue4 = ((Number) it2.next()).intValue();
                            if (iIntValue3 < iIntValue4) {
                                iIntValue3 = iIntValue4;
                            }
                        }
                        arrayList.get(i10).add(new AmbiguousColumnResolver.Match(new u15(iIntValue, iIntValue3), list));
                    }
                }, 6, null);
            }
            i9++;
            i10 = i11;
            i = 0;
        }
        if (!arrayList.isEmpty()) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                if (((List) it.next()).isEmpty()) {
                    throw new IllegalStateException("Failed to find matches for all mappings");
                }
            }
        }
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        ref$ObjectRef.element = Solution.INSTANCE.getNO_SOLUTION();
        dfs$default(INSTANCE, arrayList, null, 0, new e74() {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override
            public Object invoke(Object obj) {
                invoke((List<Match>) obj);
                return zfb.a;
            }

            /* JADX WARN: Type inference failed for: r2v1, types: [T, androidx.room.AmbiguousColumnResolver$Solution] */
            public final void invoke(List<Match> list) {
                y45.j(list, "it");
                ?? Build = Solution.INSTANCE.build(list);
                if (Build.compareTo(ref$ObjectRef.element) < 0) {
                    ref$ObjectRef.element = Build;
                }
            }
        }, 6, null);
        List<Match> matches = ((Solution) ref$ObjectRef.element).getMatches();
        ArrayList arrayList3 = new ArrayList(z71.v(matches, 10));
        Iterator<T> it2 = matches.iterator();
        while (it2.hasNext()) {
            arrayList3.add(i81.a1(((Match) it2.next()).getResultIndices()));
        }
        return (int[][]) arrayList3.toArray(new int[0][]);
    }
}
