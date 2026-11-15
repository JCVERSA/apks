.class public final synthetic Lapc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcpc;


# direct methods
.method public synthetic constructor <init>(Lcpc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lapc;->b:Lcpc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lapc;->b:Lcpc;

    invoke-static {p0}, Lcpc;->b(Lcpc;)V

    return-void
.end method
