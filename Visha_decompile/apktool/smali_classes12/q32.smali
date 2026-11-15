.class public final synthetic Lq32;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv4;


# direct methods
.method public synthetic constructor <init>(Ltv4;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq32;->b:Ltv4;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lq32;->b:Ltv4;

    invoke-interface {p0}, Ltv4;->h()V

    return-void
.end method
