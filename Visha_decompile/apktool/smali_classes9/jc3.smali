.class public final synthetic Ljc3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lkc3;


# direct methods
.method public synthetic constructor <init>(Lkc3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljc3;->b:Lkc3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Ljc3;->b:Lkc3;

    invoke-static {p0}, Lkc3;->a(Lkc3;)V

    return-void
.end method
