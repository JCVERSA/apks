.class public final Lorg/mozilla/javascript/Hashtable$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/Hashtable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public b:Lorg/mozilla/javascript/Hashtable$Entry;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/Hashtable$Entry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lorg/mozilla/javascript/Hashtable;->access$000()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object v0

    iput-object p1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    return-void
.end method


# virtual methods
.method public a()Lorg/mozilla/javascript/Hashtable$Entry;
    .locals 1

    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$a;->b()V

    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final b()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    iget-object v0, v0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/mozilla/javascript/Hashtable$Entry;->deleted:Z

    if-eqz v1, :cond_0

    iput-object v0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$a;->b()V

    iget-object p0, p0, Lorg/mozilla/javascript/Hashtable$a;->b:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lorg/mozilla/javascript/Hashtable$Entry;->next:Lorg/mozilla/javascript/Hashtable$Entry;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lorg/mozilla/javascript/Hashtable$a;->a()Lorg/mozilla/javascript/Hashtable$Entry;

    move-result-object p0

    return-object p0
.end method
