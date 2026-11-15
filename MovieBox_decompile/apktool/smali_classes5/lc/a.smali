.class public final synthetic Llc/a;
.super Ljava/lang/Object;
.source "source.java"

# interfaces
.implements Lkc/b;


# instance fields
.field public final synthetic a:Lcom/google/firebase/f;


# direct methods
.method public synthetic constructor <init>(Lcom/google/firebase/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Llc/a;->a:Lcom/google/firebase/f;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Llc/a;->a:Lcom/google/firebase/f;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/google/firebase/installations/c;->e(Lcom/google/firebase/f;)Lmc/a;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
