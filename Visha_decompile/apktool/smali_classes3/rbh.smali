.class public final synthetic Lrbh;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lsbh;


# direct methods
.method public synthetic constructor <init>(Lsbh;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrbh;->b:Lsbh;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lrbh;->b:Lsbh;

    invoke-static {p0}, Lsbh;->a(Lsbh;)Ltbh;

    move-result-object p0

    return-object p0
.end method
