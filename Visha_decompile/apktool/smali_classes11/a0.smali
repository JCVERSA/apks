.class public final synthetic La0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh0;


# direct methods
.method public synthetic constructor <init>(Lh0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La0;->b:Lh0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, La0;->b:Lh0;

    invoke-static {p0}, Lh0;->h(Lh0;)V

    return-void
.end method
