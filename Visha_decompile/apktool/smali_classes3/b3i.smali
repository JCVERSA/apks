.class public final synthetic Lb3i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li3i;


# instance fields
.field public final synthetic a:Li2i;


# direct methods
.method public synthetic constructor <init>(Li2i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3i;->a:Li2i;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1

    iget-object p0, p0, Lb3i;->a:Li2i;

    new-instance v0, Ld3i;

    invoke-direct {v0, p1, p2, p0}, Ld3i;-><init>(Lcom/google/android/gms/internal/ads/l6;Ljava/lang/CharSequence;Li2i;)V

    return-object v0
.end method
