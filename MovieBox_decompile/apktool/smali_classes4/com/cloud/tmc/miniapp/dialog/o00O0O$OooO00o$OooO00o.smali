.class public final Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;
.super Lkotlin/jvm/internal/Lambda;
.source "source.java"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o;-><init>(Lcom/cloud/tmc/miniapp/dialog/o00O0O;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;",
        ">;"
    }
.end annotation


# static fields
.field public static final OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;->OooO00o:Lcom/cloud/tmc/miniapp/dialog/o00O0O$OooO00o$OooO00o;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 3
    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    const-class v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/cloud/tmc/kernel/proxy/TmcProxy;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/cloud/tmc/kernel/proxy/imageloader/ImageLoaderProxy;

    .line 8
    .line 9
    return-object v0
.end method
