package defpackage;

import androidx.media3.exoplayer.rtsp.SessionDescription;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.grack.nanojson.JsonObject;
import com.transsion.livecaption.constant.ICode;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Stack;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.ToIntFunction;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.jsoup.nodes.Entities;

public abstract class bvc {
    public static final Pattern a = Pattern.compile("(?s)^ +[/•] +(.*?) +$");

    public static final class a {
        public final String a;
        public final String b;
        public final int c;
        public final Function d;
        public int e;

        public a(String str, String str2, int i) {
            this(str, str2, i, null);
        }

        public boolean a(a aVar) {
            return this.a.equals(aVar.a);
        }

        public a(String str, String str2, int i, Function function) {
            this.e = -1;
            this.a = str;
            this.b = str2;
            this.c = i;
            this.d = function;
        }
    }

    public static void g(JsonObject jsonObject, final List list, final List list2) {
        jsonObject.getArray("commandRuns").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                bvc.k(list, list2, (JsonObject) obj);
            }
        });
    }

    public static void h(JsonObject jsonObject, final List list, final List list2) {
        jsonObject.getArray("styleRuns").stream().filter(new w50(JsonObject.class)).map(new x50(JsonObject.class)).forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                bvc.l(list, list2, (JsonObject) obj);
            }
        });
    }

    public static String i(JsonObject jsonObject) {
        String string;
        if (org.schabi.newpipe.extractor.utils.a.o(jsonObject) || (string = jsonObject.getString(ICode.CALL.CALL_KEY_CONTENT)) == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        g(jsonObject, arrayList, arrayList2);
        h(jsonObject, arrayList, arrayList2);
        Collections.sort(arrayList, Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((bvc.a) obj).c;
            }
        }));
        Collections.sort(arrayList2, Comparator.comparingInt(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((bvc.a) obj).c;
            }
        }));
        return q(arrayList, arrayList2, string);
    }

    public static Function j(JsonObject jsonObject) {
        final String strReplaceFirst = jsonObject.getObject("onTapOptions").getObject("accessibilityInfo").getString("accessibilityLabel", "").replaceFirst(" Channel Link", "");
        return (strReplaceFirst.isEmpty() || strReplaceFirst.startsWith("YouTube: ")) ? new Function() {
            @Override
            public final Object apply(Object obj) {
                return bvc.o((String) obj);
            }
        } : new Function() {
            @Override
            public final Object apply(Object obj) {
                return bvc.p(strReplaceFirst, (String) obj);
            }
        };
    }

    public static void k(List list, List list2, JsonObject jsonObject) {
        String strP;
        JsonObject object = jsonObject.getObject("onTap").getObject("innertubeCommand");
        int i = jsonObject.getInt("startIndex", -1);
        int i2 = jsonObject.getInt(SessionDescription.ATTR_LENGTH, 0);
        if (i < 0 || i2 < 1 || object == null || (strP = cxc.P(object)) == null) {
            return;
        }
        String str = "<a href=\"" + Entities.e(strP) + "\">";
        Function functionJ = j(jsonObject);
        list.add(new a(str, "</a>", i, functionJ));
        list2.add(new a(str, "</a>", i + i2, functionJ));
    }

    public static void l(List list, List list2, JsonObject jsonObject) {
        int i = jsonObject.getInt("startIndex", -1);
        int i2 = jsonObject.getInt(SessionDescription.ATTR_LENGTH, 0);
        if (i < 0 || i2 < 1) {
            return;
        }
        int i3 = i2 + i;
        if (jsonObject.has("strikethrough")) {
            list.add(new a("<s>", "</s>", i));
            list2.add(new a("<s>", "</s>", i3));
        }
        if (jsonObject.getBoolean(TtmlNode.ITALIC, Boolean.FALSE)) {
            list.add(new a("<i>", "</i>", i));
            list2.add(new a("<i>", "</i>", i3));
        }
        if (!jsonObject.has("weightLabel") || "FONT_WEIGHT_NORMAL".equals(jsonObject.getString("weightLabel"))) {
            return;
        }
        list.add(new a("<b>", "</b>", i));
        list2.add(new a("<b>", "</b>", i3));
    }

    public static String o(String str) {
        Matcher matcher = a.matcher(str);
        return matcher.find() ? matcher.group(1) : str;
    }

    public static String p(String str, String str2) {
        return str;
    }

    public static String q(List list, List list2, String str) {
        int i;
        String strReplace = str.replace((char) 160, ' ');
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        StringBuilder sb = new StringBuilder();
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < list2.size()) {
            int iMin = i4 < list.size() ? Math.min(((a) list2.get(i2)).c, ((a) list.get(i4)).c) : ((a) list2.get(i2)).c;
            sb.append(Entities.e(strReplace.substring(i3, iMin)));
            if (((a) list2.get(i2)).c == iMin) {
                a aVar = (a) list2.get(i2);
                i2++;
                while (!stack.empty()) {
                    a aVar2 = (a) stack.pop();
                    if (aVar2.a(aVar)) {
                        if (aVar2.d != null && (i = aVar2.e) >= 0) {
                            sb.replace(i, sb.length(), (String) aVar2.d.apply(sb.substring(aVar2.e)));
                        }
                        sb.append(aVar2.b);
                        break;
                    }
                    sb.append(aVar2.b);
                    stack2.push(aVar2);
                }
                while (!stack2.empty()) {
                    a aVar3 = (a) stack2.pop();
                    sb.append(aVar3.a);
                    stack.push(aVar3);
                }
            } else {
                a aVar4 = (a) list.get(i4);
                sb.append(aVar4.a);
                aVar4.e = sb.length();
                stack.push(aVar4);
                i4++;
            }
            i3 = iMin;
        }
        sb.append(Entities.e(strReplace.substring(i3)));
        return sb.toString().replace("\n", "<br>").replace("  ", " &nbsp;");
    }
}
