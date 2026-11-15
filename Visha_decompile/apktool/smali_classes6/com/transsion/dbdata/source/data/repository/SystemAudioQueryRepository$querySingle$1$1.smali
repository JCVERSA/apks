.class final Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls74;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository;->querySingle(Lxk8$x;)Lcom/transsion/dbdata/beans/media/AudioItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ls74;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;

    invoke-direct {v0}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;-><init>()V

    sput-object v0, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;->INSTANCE:Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;
    .locals 0

    const-string p0, "cursor"

    invoke-static {p1, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "uri"

    invoke-static {p2, p0}, Ly45;->j(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Lcom/transsion/dbdata/source/data/ktx/MediaDataExtKt;->buildAudioItem(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/database/Cursor;

    check-cast p2, Landroid/net/Uri;

    invoke-virtual {p0, p1, p2}, Lcom/transsion/dbdata/source/data/repository/SystemAudioQueryRepository$querySingle$1$1;->invoke(Landroid/database/Cursor;Landroid/net/Uri;)Lcom/transsion/dbdata/beans/media/AudioItem;

    move-result-object p0

    return-object p0
.end method
