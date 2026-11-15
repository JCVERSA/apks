.class public abstract Lcom/google/common/collect/ImmutableSetMultimap$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableSetMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/google/common/collect/ImmutableSetMultimap;

    const-string v1, "emptySet"

    invoke-static {v0, v1}, Lcom/google/common/collect/n;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/n$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableSetMultimap$b;->a:Lcom/google/common/collect/n$b;

    return-void
.end method
