.class public final synthetic Lj5h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic b:Lk5h;


# direct methods
.method public synthetic constructor <init>(Lk5h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj5h;->b:Lk5h;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lj5h;->b:Lk5h;

    invoke-static {p0}, Lk5h;->a(Lk5h;)Ll5h;

    move-result-object p0

    return-object p0
.end method
