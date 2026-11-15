.class public final synthetic Lsc0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lwc0;

.field public final synthetic c:Lr5b;


# direct methods
.method public synthetic constructor <init>(Lwc0;Lr5b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lsc0;->b:Lwc0;

    iput-object p2, p0, Lsc0;->c:Lr5b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lsc0;->b:Lwc0;

    iget-object p0, p0, Lsc0;->c:Lr5b;

    invoke-static {v0, p0}, Lwc0;->f(Lwc0;Lr5b;)V

    return-void
.end method
