package com.cloud.hisavana.sdk.common.util;

import android.text.TextUtils;
import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.core.app.NotificationCompat;
import androidx.media3.exoplayer.analytics.AnalyticsListener;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.cloud.hisavana.sdk.common.athena.AthenaTracker;
import com.cloud.hisavana.sdk.common.bean.VastClick;
import com.cloud.hisavana.sdk.common.bean.VastData;
import com.cloud.hisavana.sdk.common.bean.VastIcon;
import com.cloud.hisavana.sdk.common.bean.VastMedia;
import com.cloud.hisavana.sdk.common.bean.VastTracking;
import com.cloud.hisavana.sdk.common.bean.VideoMask;
import com.cloud.hisavana.sdk.data.bean.response.AdsDTO;
import com.cloud.hisavana.sdk.data.bean.response.AdsProtocolBean;
import com.cloud.sdk.commonutil.gsonutil.GsonUtil;
import com.transsion.audiotagger.tag.datatype.DataTypes;
import defpackage.d81;
import defpackage.e74;
import defpackage.g1a;
import defpackage.i81;
import defpackage.ikd;
import defpackage.j1a;
import defpackage.qv0;
import defpackage.ue3;
import defpackage.una;
import defpackage.y45;
import java.io.ByteArrayInputStream;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import javax.xml.parsers.DocumentBuilderFactory;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.apache.commons.text.StringSubstitutor;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;

public abstract class VastDomParseUtil {
    public static final Companion a = new Companion(null);

    public static final class Companion {
        public Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final void a(String str, String str2, VastData vastData) {
            VastTracking vastTrack;
            if (str != null) {
                switch (str.hashCode()) {
                    case -1638835128:
                        if (str.equals("midpoint")) {
                            vastTrack = vastData != null ? vastData.getVastTrack() : null;
                            if (vastTrack != null) {
                                vastTrack.setMidpoint(str2);
                                break;
                            }
                        }
                        break;
                    case -1337830390:
                        if (str.equals("thirdQuartile")) {
                            vastTrack = vastData != null ? vastData.getVastTrack() : null;
                            if (vastTrack != null) {
                                vastTrack.setThirdQuarter(str2);
                                break;
                            }
                        }
                        break;
                    case -599445191:
                        if (str.equals("complete")) {
                            vastTrack = vastData != null ? vastData.getVastTrack() : null;
                            if (vastTrack != null) {
                                vastTrack.setComplete(str2);
                                break;
                            }
                        }
                        break;
                    case 109757538:
                        if (str.equals(TtmlNode.START)) {
                            vastTrack = vastData != null ? vastData.getVastTrack() : null;
                            if (vastTrack != null) {
                                vastTrack.setStartTrack(str2);
                                break;
                            }
                        }
                        break;
                    case 560220243:
                        if (str.equals("firstQuartile")) {
                            vastTrack = vastData != null ? vastData.getVastTrack() : null;
                            if (vastTrack != null) {
                                vastTrack.setQuarter(str2);
                                break;
                            }
                        }
                        break;
                }
            }
        }

        public final String b(String str) {
            String strY0;
            if (str == null) {
                return str;
            }
            String str2 = null;
            if (g1a.R(str, "{", false, 2, null) && g1a.D(str, StringSubstitutor.DEFAULT_VAR_END, false, 2, null)) {
                str2 = str;
            }
            if (str2 == null) {
                return str;
            }
            try {
                Set setEntrySet = ((HashMap) GsonUtil.b(str, HashMap.class)).entrySet();
                y45.i(setEntrySet, "<get-entries>(...)");
                strY0 = i81.y0(setEntrySet, "&", null, null, 0, null, new e74() {
                    @Override
                    public final CharSequence invoke(Map.Entry<String, String> entry) {
                        y45.j(entry, "<name for destructuring parameter 0>");
                        String key = entry.getKey();
                        String value = entry.getValue();
                        StringBuilder sb = new StringBuilder();
                        y45.g(key);
                        sb.append(URLEncoder.encode(j1a.j1(key, '\"'), "UTF-8"));
                        sb.append('=');
                        y45.g(value);
                        sb.append(URLEncoder.encode(j1a.j1(j1a.i1(value).toString(), '\"'), "UTF-8"));
                        return sb.toString();
                    }
                }, 30, null);
            } catch (Exception e) {
                ikd.b().e("VastDomParseUtil", "parse error: " + ue3.b(e));
                strY0 = str;
            }
            return strY0 == null ? str : strY0;
        }

        public final void c(VastData vastData, Node node) {
            NodeList childNodes;
            int length;
            if (node == null || (length = (childNodes = node.getChildNodes()).getLength()) < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    } else {
                        y45.g(nodeName);
                    }
                    if (y45.e(nodeName, "InLine")) {
                        VastDomParseUtil.a.k(vastData, nodeItem);
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void d(VastData vastData, Node node) {
            List<AdsProtocolBean.OmIdData> adVerifications;
            String nodeName;
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length >= 0) {
                int i = 0;
                while (true) {
                    Node nodeItem = childNodes.item(i);
                    if (nodeItem != null && nodeItem.getNodeType() == 1 && (nodeName = nodeItem.getNodeName()) != null) {
                        if (!y45.e(nodeName, "Verification")) {
                            nodeName = null;
                        }
                        if (nodeName != null) {
                            try {
                                VastDomParseUtil.a.p(vastData, nodeItem);
                            } catch (Exception unused) {
                            }
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            if (vastData == null || (adVerifications = vastData.getAdVerifications()) == null) {
                return;
            }
            d81.I(adVerifications, new e74() {
                @Override
                public final Boolean invoke(AdsProtocolBean.OmIdData omIdData) {
                    y45.j(omIdData, "it");
                    String str = omIdData.url;
                    return Boolean.valueOf(str == null || str.length() == 0);
                }
            });
        }

        public final void e(VastData vastData, Node node) {
            Node namedItem;
            Node namedItem2;
            NamedNodeMap attributes = node.getAttributes();
            String nodeValue = null;
            String strS = s((attributes == null || (namedItem2 = attributes.getNamedItem(TtmlNode.ATTR_ID)) == null) ? null : namedItem2.getNodeValue());
            NamedNodeMap attributes2 = node.getAttributes();
            if (attributes2 != null && (namedItem = attributes2.getNamedItem("skipoffset")) != null) {
                nodeValue = namedItem.getNodeValue();
            }
            String strS2 = s(nodeValue);
            if (vastData != null) {
                vastData.setSkipOffSet(Integer.valueOf(una.a(strS2)));
            }
            if (vastData != null) {
                if (TextUtils.isEmpty(strS) && (strS = vastData.getId()) == null) {
                    strS = "";
                }
                vastData.setId(strS);
            }
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "Linear")) {
                        l(vastData, nodeItem);
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void f(VastData vastData, Node node) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "Creative")) {
                        e(vastData, nodeItem);
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void g(VastData vastData, Node node) {
            Node namedItem;
            NodeList childNodes = node.getChildNodes();
            try {
                int length = childNodes.getLength();
                if (length < 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    Node nodeItem = childNodes.item(i);
                    if (nodeItem != null && nodeItem.getNodeType() == 1) {
                        String nodeName = nodeItem.getNodeName();
                        if (nodeName == null) {
                            nodeName = "";
                        }
                        if (y45.e(nodeName, "CreativeExtension")) {
                            NamedNodeMap attributes = nodeItem.getAttributes();
                            String strS = s((attributes == null || (namedItem = attributes.getNamedItem("type")) == null) ? null : namedItem.getNodeValue());
                            if (y45.e("cover", strS)) {
                                if (vastData != null) {
                                    Node firstChild = nodeItem.getFirstChild();
                                    vastData.setVideoMask(new VideoMask(s(firstChild != null ? firstChild.getNodeValue() : null)));
                                }
                            } else if (y45.e("buttonText", strS) && vastData != null) {
                                Node firstChild2 = nodeItem.getFirstChild();
                                vastData.setButtonTxt(s(firstChild2 != null ? firstChild2.getNodeValue() : null));
                            }
                        }
                    }
                    if (i == length) {
                        return;
                    } else {
                        i++;
                    }
                }
            } catch (Exception e) {
                ikd.b().e("VastDomParseUtil", "parseExtensions " + Log.getStackTraceString(e));
            }
        }

        public final void h(VastData vastData, Node node) {
            VastIcon vastIcon;
            Node namedItem;
            Node namedItem2;
            Node namedItem3;
            Node namedItem4;
            Node namedItem5;
            Node namedItem6;
            Node namedItem7;
            String str = "0";
            VastIcon vastIcon2 = new VastIcon(null, null, null, null, null, null, null, null, null, null, AnalyticsListener.EVENT_DRM_KEYS_LOADED, null);
            if (vastData == null) {
                vastIcon = vastIcon2;
            } else {
                vastIcon = vastIcon2;
                vastData.setIcon(vastIcon);
            }
            NamedNodeMap attributes = node.getAttributes();
            vastIcon.setProgram((attributes == null || (namedItem7 = attributes.getNamedItem("program")) == null) ? null : namedItem7.getNodeValue());
            try {
                NamedNodeMap attributes2 = node.getAttributes();
                String nodeValue = (attributes2 == null || (namedItem6 = attributes2.getNamedItem("width")) == null) ? null : namedItem6.getNodeValue();
                if (nodeValue == null) {
                    nodeValue = "0";
                }
                vastIcon.setWidth(Integer.valueOf(Integer.parseInt(nodeValue)));
            } catch (Exception e) {
                ikd.b().e("VastDomParseUtil", "parseIcon " + Log.getStackTraceString(e));
            }
            try {
                NamedNodeMap attributes3 = node.getAttributes();
                String nodeValue2 = (attributes3 == null || (namedItem5 = attributes3.getNamedItem("height")) == null) ? null : namedItem5.getNodeValue();
                if (nodeValue2 == null) {
                    nodeValue2 = "0";
                }
                vastIcon.setHeight(Integer.valueOf(Integer.parseInt(nodeValue2)));
            } catch (Exception e2) {
                ikd.b().e("VastDomParseUtil", "parseIcon " + Log.getStackTraceString(e2));
            }
            try {
                NamedNodeMap attributes4 = node.getAttributes();
                String nodeValue3 = (attributes4 == null || (namedItem4 = attributes4.getNamedItem("xPosition")) == null) ? null : namedItem4.getNodeValue();
                if (nodeValue3 == null) {
                    nodeValue3 = "0";
                }
                vastIcon.setXPosition(Integer.valueOf(Integer.parseInt(nodeValue3)));
            } catch (Exception e3) {
                ikd.b().e("VastDomParseUtil", "parseIcon " + Log.getStackTraceString(e3));
            }
            try {
                NamedNodeMap attributes5 = node.getAttributes();
                String nodeValue4 = (attributes5 == null || (namedItem3 = attributes5.getNamedItem("yPosition")) == null) ? null : namedItem3.getNodeValue();
                if (nodeValue4 != null) {
                    str = nodeValue4;
                }
                vastIcon.setYPosition(Integer.valueOf(Integer.parseInt(str)));
            } catch (Exception e4) {
                ikd.b().e("VastDomParseUtil", "parseIcon " + Log.getStackTraceString(e4));
            }
            NamedNodeMap attributes6 = node.getAttributes();
            vastIcon.setOffset((attributes6 == null || (namedItem2 = attributes6.getNamedItem(TypedValues.CycleType.S_WAVE_OFFSET)) == null) ? null : namedItem2.getNodeValue());
            NamedNodeMap attributes7 = node.getAttributes();
            vastIcon.setDuration(Integer.valueOf(una.a((attributes7 == null || (namedItem = attributes7.getNamedItem("program")) == null) ? null : namedItem.getNodeValue())));
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "IconClicks")) {
                        i(vastData, nodeItem);
                    } else if (y45.e(nodeName, "StaticResource")) {
                        Node firstChild = nodeItem.getFirstChild();
                        vastIcon.setIconResource(s(firstChild != null ? firstChild.getNodeValue() : null));
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void i(VastData vastData, Node node) {
            VastIcon icon;
            List<String> iconClickTracking;
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "IconClickThrough")) {
                        VastIcon icon2 = vastData != null ? vastData.getIcon() : null;
                        if (icon2 != null) {
                            Node firstChild = nodeItem.getFirstChild();
                            icon2.setIconClick(s(firstChild != null ? firstChild.getNodeValue() : null));
                        }
                    } else if (y45.e(nodeName, "IconClickTracking")) {
                        Node firstChild2 = nodeItem.getFirstChild();
                        String strS = s(firstChild2 != null ? firstChild2.getNodeValue() : null);
                        if (strS != null && vastData != null && (icon = vastData.getIcon()) != null && (iconClickTracking = icon.getIconClickTracking()) != null) {
                            iconClickTracking.add(strS);
                        }
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void j(VastData vastData, Node node) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "Icon")) {
                        h(vastData, nodeItem);
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final void k(VastData vastData, Node node) {
            List<String> impression;
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    switch (nodeName.hashCode()) {
                        case -2077435339:
                            if (nodeName.equals("AdVerifications")) {
                                d(vastData, nodeItem);
                            }
                            break;
                        case -1692490108:
                            if (nodeName.equals("Creatives")) {
                                f(vastData, nodeItem);
                            }
                            break;
                        case -56677412:
                            if (nodeName.equals(DataTypes.OBJ_DESCRIPTION) && vastData != null) {
                                Node firstChild = nodeItem.getFirstChild();
                                vastData.setDescription(s(firstChild != null ? firstChild.getNodeValue() : null));
                            }
                            break;
                        case 501930965:
                            if (nodeName.equals("AdTitle") && vastData != null) {
                                Node firstChild2 = nodeItem.getFirstChild();
                                vastData.setTitle(s(firstChild2 != null ? firstChild2.getNodeValue() : null));
                            }
                            break;
                        case 2114088489:
                            if (nodeName.equals("Impression")) {
                                Node firstChild3 = nodeItem.getFirstChild();
                                String strS = s(firstChild3 != null ? firstChild3.getNodeValue() : null);
                                if (strS != null && vastData != null && (impression = vastData.getImpression()) != null) {
                                    impression.add(strS);
                                }
                            }
                            break;
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
        public final void l(VastData vastData, Node node) {
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    switch (nodeName.hashCode()) {
                        case -2049897434:
                            if (nodeName.equals("VideoClicks")) {
                                q(vastData, nodeItem);
                            }
                            break;
                        case -1927368268:
                            if (nodeName.equals("Duration")) {
                                Node firstChild = nodeItem.getFirstChild();
                                String strS = s(firstChild != null ? firstChild.getNodeValue() : null);
                                if (vastData != null) {
                                    vastData.setDuration(Integer.valueOf(una.a(strS)));
                                }
                            }
                            break;
                        case -385055469:
                            if (nodeName.equals("MediaFiles")) {
                                m(vastData, nodeItem);
                            }
                            break;
                        case -371923645:
                            if (nodeName.equals("CreativeExtensions")) {
                                g(vastData, nodeItem);
                            }
                            break;
                        case 70476538:
                            if (nodeName.equals("Icons")) {
                                j(vastData, nodeItem);
                            }
                            break;
                        case 611554000:
                            if (nodeName.equals("TrackingEvents")) {
                                n(vastData, nodeItem);
                            }
                            break;
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final void m(VastData vastData, Node node) {
            Node namedItem;
            Node namedItem2;
            String type;
            VastMedia mainAd;
            VastMedia mainAd2;
            Node namedItem3;
            Node namedItem4;
            NodeList childNodes = node.getChildNodes();
            try {
                int length = childNodes.getLength();
                if (length < 0) {
                    return;
                }
                int i = 0;
                while (true) {
                    Node nodeItem = childNodes.item(i);
                    if (nodeItem != null && nodeItem.getNodeType() == 1) {
                        String nodeName = nodeItem.getNodeName();
                        if (nodeName == null) {
                            nodeName = "";
                        }
                        if (y45.e(nodeName, "MediaFile")) {
                            if (vastData != null) {
                                vastData.setMainAd(new VastMedia(null, null, null, 0, 0, 31, null));
                            }
                            String nodeValue = null;
                            VastMedia mainAd3 = vastData != null ? vastData.getMainAd() : null;
                            if (mainAd3 != null) {
                                Node firstChild = nodeItem.getFirstChild();
                                mainAd3.setMediaResource(s(firstChild != null ? firstChild.getNodeValue() : null));
                            }
                            VastMedia mainAd4 = vastData != null ? vastData.getMainAd() : null;
                            if (mainAd4 != null) {
                                NamedNodeMap attributes = nodeItem.getAttributes();
                                mainAd4.setDelivery(s((attributes == null || (namedItem = attributes.getNamedItem("delivery")) == null) ? null : namedItem.getNodeValue()));
                            }
                            VastMedia mainAd5 = vastData != null ? vastData.getMainAd() : null;
                            if (mainAd5 != null) {
                                NamedNodeMap attributes2 = nodeItem.getAttributes();
                                mainAd5.setType(s((attributes2 == null || (namedItem2 = attributes2.getNamedItem("type")) == null) ? null : namedItem2.getNodeValue()));
                            }
                            if (vastData != null) {
                                VastMedia mainAd6 = vastData.getMainAd();
                                vastData.setVideoType((mainAd6 == null || (type = mainAd6.getType()) == null) ? null : Boolean.valueOf(g1a.R(type, "video", false, 2, null)));
                            }
                            String str = "0";
                            if (vastData != null) {
                                try {
                                    mainAd = vastData.getMainAd();
                                } catch (Exception e) {
                                    ikd.b().e("VastDomParseUtil", "parseMediaFiles width " + Log.getStackTraceString(e));
                                }
                            } else {
                                mainAd = null;
                            }
                            if (mainAd != null) {
                                NamedNodeMap attributes3 = nodeItem.getAttributes();
                                String strS = s((attributes3 == null || (namedItem4 = attributes3.getNamedItem("width")) == null) ? null : namedItem4.getNodeValue());
                                if (strS == null) {
                                    strS = "0";
                                }
                                mainAd.setWidth(Integer.parseInt(strS));
                            }
                            if (vastData != null) {
                                try {
                                    mainAd2 = vastData.getMainAd();
                                } catch (Exception e2) {
                                    ikd.b().e("VastDomParseUtil", "parseMediaFiles height " + Log.getStackTraceString(e2));
                                }
                            } else {
                                mainAd2 = null;
                            }
                            if (mainAd2 != null) {
                                NamedNodeMap attributes4 = nodeItem.getAttributes();
                                if (attributes4 != null && (namedItem3 = attributes4.getNamedItem("height")) != null) {
                                    nodeValue = namedItem3.getNodeValue();
                                }
                                String strS2 = s(nodeValue);
                                if (strS2 != null) {
                                    str = strS2;
                                }
                                mainAd2.setHeight(Integer.parseInt(str));
                            }
                        }
                    }
                    if (i == length) {
                        return;
                    } else {
                        i++;
                    }
                }
            } catch (Exception e3) {
                ikd.b().e("VastDomParseUtil", "parseMediaFiles " + Log.getStackTraceString(e3));
            }
        }

        public final void n(VastData vastData, Node node) {
            Node namedItem;
            if (vastData != null) {
                vastData.setVastTrack(new VastTracking(null, null, null, null, null, 31, null));
            }
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "Tracking")) {
                        NamedNodeMap attributes = nodeItem.getAttributes();
                        String strS = s((attributes == null || (namedItem = attributes.getNamedItem(NotificationCompat.CATEGORY_EVENT)) == null) ? null : namedItem.getNodeValue());
                        Node firstChild = nodeItem.getFirstChild();
                        String nodeValue = firstChild != null ? firstChild.getNodeValue() : null;
                        if (nodeValue == null) {
                            nodeValue = "";
                        }
                        String strS2 = s(nodeValue);
                        a(strS, strS2 != null ? strS2 : "", vastData);
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final VastData o(String str, AdsDTO adsDTO) {
            y45.j(str, "data");
            if (!TextUtils.isEmpty(str) && adsDTO != null) {
                AthenaTracker.q0(adsDTO, null, 1, "");
                DocumentBuilderFactory documentBuilderFactoryNewInstance = DocumentBuilderFactory.newInstance();
                y45.i(documentBuilderFactoryNewInstance, "newInstance(...)");
                VastData vastData = new VastData(null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 262143, null);
                try {
                    byte[] bytes = r(g1a.N(str, "&", "&amp;", false, 4, null)).getBytes(qv0.b);
                    y45.i(bytes, "getBytes(...)");
                    Element documentElement = documentBuilderFactoryNewInstance.newDocumentBuilder().parse(new ByteArrayInputStream(bytes)).getDocumentElement();
                    if (!TextUtils.equals("VAST", documentElement.getTagName())) {
                        return vastData;
                    }
                    vastData.setVersion(VastDomParseUtil.a.s(documentElement.getAttribute("version")));
                    NodeList childNodes = documentElement.getChildNodes();
                    int length = childNodes.getLength();
                    if (length >= 0) {
                        int i = 0;
                        while (true) {
                            Node nodeItem = childNodes.item(i);
                            if (nodeItem != null && nodeItem.getNodeType() == 1) {
                                String nodeName = nodeItem.getNodeName();
                                if (nodeName == null) {
                                    nodeName = "";
                                } else {
                                    y45.g(nodeName);
                                }
                                if (y45.e(nodeName, "Ad")) {
                                    VastDomParseUtil.a.c(vastData, nodeItem);
                                }
                            }
                            if (i == length) {
                                break;
                            }
                            i++;
                        }
                    }
                    ikd.b().d("VastDomParseUtil", "parseVast " + vastData);
                    return vastData;
                } catch (Exception e) {
                    ikd.b().e("VastDomParseUtil", Log.getStackTraceString(e));
                }
            }
            return null;
        }

        public final void p(VastData vastData, Node node) {
            List<AdsProtocolBean.OmIdData> adVerifications;
            Node namedItem;
            AdsProtocolBean.OmIdData omIdData = new AdsProtocolBean.OmIdData();
            NamedNodeMap attributes = node.getAttributes();
            omIdData.vendorKey = (attributes == null || (namedItem = attributes.getNamedItem("vender")) == null) ? null : namedItem.getNodeValue();
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length >= 0) {
                int i = 0;
                while (true) {
                    Node nodeItem = childNodes.item(i);
                    if (nodeItem != null && nodeItem.getNodeType() == 1) {
                        String nodeName = nodeItem.getNodeName();
                        if (nodeName == null) {
                            nodeName = "";
                        }
                        if (y45.e(nodeName, "JavaScriptResource")) {
                            Node firstChild = nodeItem.getFirstChild();
                            omIdData.url = s(firstChild != null ? firstChild.getNodeValue() : null);
                        } else if (y45.e(nodeName, "VerificationParameters")) {
                            Node firstChild2 = nodeItem.getFirstChild();
                            omIdData.verification_parameters = b(s(firstChild2 != null ? firstChild2.getNodeValue() : null));
                        }
                    }
                    if (i == length) {
                        break;
                    } else {
                        i++;
                    }
                }
            }
            if (vastData == null || (adVerifications = vastData.getAdVerifications()) == null) {
                return;
            }
            adVerifications.add(omIdData);
        }

        public final void q(VastData vastData, Node node) {
            VastClick vastClick = new VastClick(null, null, 3, null);
            if (vastData != null) {
                vastData.setVastClick(vastClick);
            }
            NodeList childNodes = node.getChildNodes();
            int length = childNodes.getLength();
            if (length < 0) {
                return;
            }
            int i = 0;
            while (true) {
                Node nodeItem = childNodes.item(i);
                if (nodeItem != null && nodeItem.getNodeType() == 1) {
                    String nodeName = nodeItem.getNodeName();
                    if (nodeName == null) {
                        nodeName = "";
                    }
                    if (y45.e(nodeName, "ClickThrough")) {
                        Node firstChild = nodeItem.getFirstChild();
                        vastClick.setVideoClick(s(firstChild != null ? firstChild.getNodeValue() : null));
                    } else if (y45.e(nodeName, "ClickTracking")) {
                        Node firstChild2 = nodeItem.getFirstChild();
                        String strS = s(firstChild2 != null ? firstChild2.getNodeValue() : null);
                        if (strS != null) {
                            vastClick.getClickTrack().add(strS);
                        }
                    }
                }
                if (i == length) {
                    return;
                } else {
                    i++;
                }
            }
        }

        public final String r(String str) {
            return str != null ? g1a.N(g1a.N(str, "\\", "", false, 4, null), "\\\"", "\"", false, 4, null) : "";
        }

        public final String s(String str) {
            String strN;
            String strN2;
            if (str == null || (strN = g1a.N(str, "<![CDATA[", "", false, 4, null)) == null || (strN2 = g1a.N(strN, "]]>", "", false, 4, null)) == null) {
                return null;
            }
            return g1a.N(strN2, "&amp;", "&", false, 4, null);
        }

        public Companion() {
        }
    }
}
