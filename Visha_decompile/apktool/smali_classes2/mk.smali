.class public final synthetic Lmk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmk;->b:I

    iput-object p2, p0, Lmk;->c:Ljava/lang/String;

    iput-object p3, p0, Lmk;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget v0, p0, Lmk;->b:I

    iget-object v1, p0, Lmk;->c:Ljava/lang/String;

    iget-object p0, p0, Lmk;->d:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Lvk;->c(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
