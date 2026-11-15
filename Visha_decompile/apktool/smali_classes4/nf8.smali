.class public Lnf8;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final obj:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field public final priority:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lnf8;->priority:I

    iput-object p2, p0, Lnf8;->obj:Ljava/lang/Object;

    return-void
.end method
