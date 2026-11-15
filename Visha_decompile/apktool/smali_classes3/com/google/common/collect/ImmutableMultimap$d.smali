.class public abstract Lcom/google/common/collect/ImmutableMultimap$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMultimap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field public static final a:Lcom/google/common/collect/n$b;

.field public static final b:Lcom/google/common/collect/n$b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "map"

    const-class v1, Lcom/google/common/collect/ImmutableMultimap;

    invoke-static {v1, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/n$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$d;->a:Lcom/google/common/collect/n$b;

    const-string v0, "size"

    invoke-static {v1, v0}, Lcom/google/common/collect/n;->a(Ljava/lang/Class;Ljava/lang/String;)Lcom/google/common/collect/n$b;

    move-result-object v0

    sput-object v0, Lcom/google/common/collect/ImmutableMultimap$d;->b:Lcom/google/common/collect/n$b;

    return-void
.end method
