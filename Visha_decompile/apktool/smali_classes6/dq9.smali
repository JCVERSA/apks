.class public final synthetic Ldq9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldq9;->b:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ldq9;->b:Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;->a(Lcom/transsion/cloud/updownload/livedata/SmartTaskLiveData;Ljava/util/List;)Lzfb;

    move-result-object p0

    return-object p0
.end method
