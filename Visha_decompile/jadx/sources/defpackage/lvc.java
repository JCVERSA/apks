package defpackage;

import com.grack.nanojson.JsonArray;
import com.grack.nanojson.JsonObject;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;
import java.util.stream.Collectors;
import org.schabi.newpipe.extractor.MetaInfo;
import org.schabi.newpipe.extractor.exceptions.ParsingException;
import org.schabi.newpipe.extractor.stream.Description;
import org.schabi.newpipe.extractor.utils.a;

public abstract class lvc {
    public static MetaInfo c(JsonObject jsonObject) throws ParsingException {
        String strP;
        MetaInfo metaInfo = new MetaInfo();
        String strL = cxc.L(jsonObject.getObject("contentTitle"));
        String strL2 = cxc.L(jsonObject.getObject("text"));
        if (strL == null || strL2 == null) {
            throw new ParsingException("Could not extract clarification renderer content");
        }
        metaInfo.setTitle(strL);
        metaInfo.setContent(new Description(strL2, 3));
        if (jsonObject.has("actionButton")) {
            JsonObject object = jsonObject.getObject("actionButton").getObject("buttonRenderer");
            try {
                String strN = cxc.n(cxc.P(object.getObject("command")));
                Objects.requireNonNull(strN);
                metaInfo.addUrl(new URL(strN));
                String strL3 = cxc.L(object.getObject("text"));
                if (a.m(strL3)) {
                    throw new ParsingException("Could not get metadata info link text.");
                }
                metaInfo.addUrlText(strL3);
            } catch (NullPointerException | MalformedURLException e) {
                throw new ParsingException("Could not get metadata info URL", e);
            }
        }
        if (jsonObject.has("secondaryEndpoint") && jsonObject.has("secondarySource") && (strP = cxc.P(jsonObject.getObject("secondaryEndpoint"))) != null && !cxc.Y(strP)) {
            try {
                metaInfo.addUrl(new URL(strP));
                String strL4 = cxc.L(jsonObject.getObject("secondarySource"));
                if (strL4 != null) {
                    strP = strL4;
                }
                metaInfo.addUrlText(strP);
            } catch (MalformedURLException e2) {
                throw new ParsingException("Could not get metadata info secondary URL", e2);
            }
        }
        return metaInfo;
    }

    public static void d(JsonObject jsonObject, Consumer consumer) throws ParsingException {
        String string;
        List<JsonObject> list = (List) jsonObject.values().stream().filter(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return lvc.g(obj);
            }
        }).map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return lvc.h(obj);
            }
        }).collect(Collectors.toList());
        if (list.isEmpty()) {
            throw new ParsingException("Could not extract any meta info from emergency renderer");
        }
        for (JsonObject jsonObject2 : list) {
            MetaInfo metaInfo = new MetaInfo();
            String strN = cxc.N(jsonObject2.getObject("title"), "title");
            if (jsonObject2.has("actionText")) {
                string = "\n" + cxc.N(jsonObject2.getObject("actionText"), "action");
            } else if (jsonObject2.has("contacts")) {
                JsonArray array = jsonObject2.getArray("contacts");
                StringBuilder sb = new StringBuilder();
                for (int i = 0; i < array.size(); i++) {
                    sb.append("\n");
                    sb.append(cxc.N(array.getObject(i).getObject("actionText"), "contacts.actionText"));
                }
                string = sb.toString();
            } else {
                string = "";
            }
            String strN2 = cxc.N(jsonObject2.getObject("detailsText"), "details");
            String strN3 = cxc.N(jsonObject2.getObject("navigationText"), "urlText");
            metaInfo.setTitle(strN);
            metaInfo.setContent(new Description(strN2 + string, 3));
            metaInfo.addUrlText(strN3);
            String strP = cxc.P(jsonObject2.getObject("navigationEndpoint"));
            if (strP == null) {
                throw new ParsingException("Could not extract emergency renderer url");
            }
            try {
                metaInfo.addUrl(new URL(a.w(strP)));
                consumer.accept(metaInfo);
            } catch (MalformedURLException e) {
                throw new ParsingException("Could not parse emergency renderer url", e);
            }
        }
    }

    public static MetaInfo e(JsonObject jsonObject) throws ParsingException {
        MetaInfo metaInfo = new MetaInfo();
        StringBuilder sb = new StringBuilder();
        for (Object obj : jsonObject.getArray("paragraphs")) {
            if (sb.length() != 0) {
                sb.append("<br>");
            }
            sb.append(cxc.L((JsonObject) obj));
        }
        metaInfo.setContent(new Description(sb.toString(), 1));
        if (jsonObject.has("sourceEndpoint")) {
            try {
                String strN = cxc.n(cxc.P(jsonObject.getObject("sourceEndpoint")));
                Objects.requireNonNull(strN);
                metaInfo.addUrl(new URL(strN));
                String strL = cxc.L(jsonObject.getObject("inlineSource"));
                if (a.m(strL)) {
                    throw new ParsingException("Could not get metadata info link text.");
                }
                metaInfo.addUrlText(strL);
            } catch (NullPointerException | MalformedURLException e) {
                throw new ParsingException("Could not get metadata info URL", e);
            }
        }
        return metaInfo;
    }

    public static List f(JsonArray jsonArray) throws ParsingException {
        final ArrayList arrayList = new ArrayList();
        Iterator<Object> it = jsonArray.iterator();
        while (it.hasNext()) {
            JsonObject jsonObject = (JsonObject) it.next();
            if (jsonObject.has("itemSectionRenderer")) {
                for (JsonObject jsonObject2 : jsonObject.getObject("itemSectionRenderer").getArray("contents")) {
                    if (jsonObject2.has("infoPanelContentRenderer")) {
                        arrayList.add(e(jsonObject2.getObject("infoPanelContentRenderer")));
                    }
                    if (jsonObject2.has("clarificationRenderer")) {
                        arrayList.add(c(jsonObject2.getObject("clarificationRenderer")));
                    }
                    if (jsonObject2.has("emergencyOneboxRenderer")) {
                        d(jsonObject2.getObject("emergencyOneboxRenderer"), new Consumer() {
                            @Override
                            public final void accept(Object obj) {
                                arrayList.add((MetaInfo) obj);
                            }
                        });
                    }
                }
            }
        }
        return arrayList;
    }

    public static boolean g(Object obj) {
        return (obj instanceof JsonObject) && ((JsonObject) obj).has("singleActionEmergencySupportRenderer");
    }

    public static JsonObject h(Object obj) {
        return ((JsonObject) obj).getObject("singleActionEmergencySupportRenderer");
    }
}
