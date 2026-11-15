.class public final synthetic Ld0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh0;

.field public final synthetic c:Ljava/io/Serializable;


# direct methods
.method public synthetic constructor <init>(Lh0;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0;->b:Lh0;

    iput-object p2, p0, Ld0;->c:Ljava/io/Serializable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Ld0;->b:Lh0;

    iget-object p0, p0, Ld0;->c:Ljava/io/Serializable;

    invoke-static {v0, p0}, Lh0;->i(Lh0;Ljava/io/Serializable;)V

    return-void
.end method
