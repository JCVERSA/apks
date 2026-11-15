.class public Lcom/transsion/sniffer_load/data/WhatsBookmark;
.super Lcom/transsion/dbdata/beans/sniff/Bookmark;
.source "SourceFile"


# static fields
.field public static final ICON_WHATSAPP:I

.field public static final URL_WHATSAPP:Ljava/lang/String; = "WhatsApp"

.field public static final WHATSAPP_GUIDE_CLOSED:Ljava/lang/String; = "whatsapp_guide_closed"

.field public static final WHATSAPP_GUIDE_SHOWED:Ljava/lang/String; = "whatsapp_guide_showed"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/transsion/sniffer_load/R$drawable;->icon_whatapp_logo:I

    sput v0, Lcom/transsion/sniffer_load/data/WhatsBookmark;->ICON_WHATSAPP:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2, p3}, Lcom/transsion/dbdata/beans/sniff/Bookmark;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
