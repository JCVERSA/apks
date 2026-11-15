.class public Lcom/transsion/athena/hatnea/hatnea$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/transsion/athena/hatnea/hatnea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:[B

.field public b:I

.field public c:Ljava/util/List;


# direct methods
.method public constructor <init>([BILjava/util/List;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/transsion/athena/hatnea/hatnea$a;->a:[B

    iput p2, p0, Lcom/transsion/athena/hatnea/hatnea$a;->b:I

    iput-object p3, p0, Lcom/transsion/athena/hatnea/hatnea$a;->c:Ljava/util/List;

    return-void
.end method

.method public static a([BILjava/util/List;I)Lcom/transsion/athena/hatnea/hatnea$a;
    .locals 1

    new-instance v0, Lcom/transsion/athena/hatnea/hatnea$a;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/transsion/athena/hatnea/hatnea$a;-><init>([BILjava/util/List;I)V

    return-object v0
.end method
