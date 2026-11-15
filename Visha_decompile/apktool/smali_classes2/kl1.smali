.class public final synthetic Lkl1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lll1;


# direct methods
.method public synthetic constructor <init>(Lll1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkl1;->b:Lll1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lkl1;->b:Lll1;

    invoke-static {p0}, Lll1;->a(Lll1;)V

    return-void
.end method
