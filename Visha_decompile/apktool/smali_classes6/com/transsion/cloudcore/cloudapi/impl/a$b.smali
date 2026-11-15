.class public final Lcom/transsion/cloudcore/cloudapi/impl/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lyfb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/transsion/cloudcore/cloudapi/impl/a;->j(Landroid/content/Context;Lvz0;)Lrz0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lvz0;


# direct methods
.method public constructor <init>(Lvz0;)V
    .locals 0

    iput-object p1, p0, Lcom/transsion/cloudcore/cloudapi/impl/a$b;->a:Lvz0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/transsion/cloudcore/cloudapi/impl/a$b;->a:Lvz0;

    invoke-virtual {p0}, Lvz0;->i()Lxfb;

    move-result-object p0

    invoke-interface {p0}, Lxfb;->a()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
