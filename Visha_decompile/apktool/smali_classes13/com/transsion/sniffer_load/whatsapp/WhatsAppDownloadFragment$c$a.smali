.class public abstract synthetic Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = "a"
.end annotation


# static fields
.field public static final synthetic a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    invoke-static {}, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->values()[Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;->IMAGE:Lcom/transsion/dbdata/beans/media/MediaItem$MediaType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    sput-object v0, Lcom/transsion/sniffer_load/whatsapp/WhatsAppDownloadFragment$c$a;->a:[I

    return-void
.end method
