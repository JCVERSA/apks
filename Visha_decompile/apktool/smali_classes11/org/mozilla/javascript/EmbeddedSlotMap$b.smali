.class public final Lorg/mozilla/javascript/EmbeddedSlotMap$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/mozilla/javascript/EmbeddedSlotMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public b:Lorg/mozilla/javascript/ScriptableObject$Slot;


# direct methods
.method public constructor <init>(Lorg/mozilla/javascript/ScriptableObject$Slot;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$b;->b:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-void
.end method


# virtual methods
.method public a()Lorg/mozilla/javascript/ScriptableObject$Slot;
    .locals 2

    iget-object v0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$b;->b:Lorg/mozilla/javascript/ScriptableObject$Slot;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lorg/mozilla/javascript/ScriptableObject$Slot;->orderedNext:Lorg/mozilla/javascript/ScriptableObject$Slot;

    iput-object v1, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$b;->b:Lorg/mozilla/javascript/ScriptableObject$Slot;

    return-object v0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lorg/mozilla/javascript/EmbeddedSlotMap$b;->b:Lorg/mozilla/javascript/ScriptableObject$Slot;

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

    invoke-virtual {p0}, Lorg/mozilla/javascript/EmbeddedSlotMap$b;->a()Lorg/mozilla/javascript/ScriptableObject$Slot;

    move-result-object p0

    return-object p0
.end method
