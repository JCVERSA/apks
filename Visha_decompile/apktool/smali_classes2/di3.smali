.class public final synthetic Ldi3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldi3;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Ldi3;->a:Ljava/util/List;

    check-cast p1, Lcom/google/android/exoplayer2/t$d;

    invoke-static {p0, p1}, Lcom/google/android/exoplayer2/i$c;->j(Ljava/util/List;Lcom/google/android/exoplayer2/t$d;)V

    return-void
.end method
