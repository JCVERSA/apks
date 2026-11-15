.class public final synthetic Lgfc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lifc;


# direct methods
.method public synthetic constructor <init>(Lifc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfc;->b:Lifc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lgfc;->b:Lifc;

    invoke-static {p0}, Lifc;->W(Lifc;)V

    return-void
.end method
