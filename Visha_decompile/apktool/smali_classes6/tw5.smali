.class public final synthetic Ltw5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le74;


# instance fields
.field public final synthetic b:Lcom/transsion/dbdata/beans/media/AudioItem;


# direct methods
.method public synthetic constructor <init>(Lcom/transsion/dbdata/beans/media/AudioItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltw5;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ltw5;->b:Lcom/transsion/dbdata/beans/media/AudioItem;

    check-cast p1, Lcom/transsion/dbdata/beans/media/AudioItem;

    invoke-static {p0, p1}, Lxw5;->k(Lcom/transsion/dbdata/beans/media/AudioItem;Lcom/transsion/dbdata/beans/media/AudioItem;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
