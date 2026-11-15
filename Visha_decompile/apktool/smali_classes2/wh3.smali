.class public final synthetic Lwh3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lom5$a;


# instance fields
.field public final synthetic a:Lb88;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lb88;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lwh3;->a:Lb88;

    iput p2, p0, Lwh3;->b:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lwh3;->a:Lb88;

    iget p0, p0, Lwh3;->b:I

    check-cast p1, Lcom/google/android/exoplayer2/t$d;

    invoke-static {v0, p0, p1}, Lcom/google/android/exoplayer2/i;->o(Lb88;ILcom/google/android/exoplayer2/t$d;)V

    return-void
.end method
