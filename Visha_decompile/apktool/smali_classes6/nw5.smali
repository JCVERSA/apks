.class public final synthetic Lnw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnw5;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lnw5;->b:Ljava/util/List;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lxw5;->o(Ljava/util/List;Lcom/transsion/dbdata/beans/media/AudioItem;)Lzfb;

    move-result-object p0

    return-object p0
.end method
