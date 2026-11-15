.class public final synthetic Lrp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lyp;


# direct methods
.method public synthetic constructor <init>(Lyp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrp;->b:Lyp;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lrp;->b:Lyp;

    invoke-static {p0}, Lyp;->e(Lyp;)V

    return-void
.end method
