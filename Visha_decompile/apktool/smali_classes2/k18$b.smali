.class public Lk18$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk18;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic b:Lk18;


# direct methods
.method public constructor <init>(Lk18;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk18$b;->b:Lk18;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk18;Lk18$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk18$b;-><init>(Lk18;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lk18$b;->b:Lk18;

    invoke-static {p0}, Lk18;->a(Lk18;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lk18$b;->a()Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
