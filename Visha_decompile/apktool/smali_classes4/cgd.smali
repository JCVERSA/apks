.class public abstract Lcgd;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Object;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)Lcgd;
    .locals 0

    .line 2
    iput-object p1, p0, Lcgd;->b:Ljava/lang/Exception;

    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lcgd;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcgd;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcgd;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public d()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object p0, p0, Lcgd;->a:Ljava/lang/Object;

    return-object p0
.end method

.method public e()Ljava/lang/Exception;
    .locals 0

    iget-object p0, p0, Lcgd;->b:Ljava/lang/Exception;

    return-object p0
.end method
