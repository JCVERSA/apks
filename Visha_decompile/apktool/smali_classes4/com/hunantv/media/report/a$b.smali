.class Lcom/hunantv/media/report/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hunantv/media/report/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hunantv/media/report/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:I

.field public b:I

.field public c:Lcom/hunantv/media/report/entity/ErrorEntity;

.field final synthetic d:Lcom/hunantv/media/report/a;


# direct methods
.method public constructor <init>(Lcom/hunantv/media/report/a;IILcom/hunantv/media/report/entity/ErrorEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/hunantv/media/report/a$b;->d:Lcom/hunantv/media/report/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/hunantv/media/report/a$b;->a:I

    iput p3, p0, Lcom/hunantv/media/report/a$b;->b:I

    iput-object p4, p0, Lcom/hunantv/media/report/a$b;->c:Lcom/hunantv/media/report/entity/ErrorEntity;

    return-void
.end method
