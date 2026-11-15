.class public final synthetic Llic;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ljic;

.field public final synthetic c:J


# direct methods
.method public synthetic constructor <init>(Ljic;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llic;->b:Ljic;

    iput-wide p2, p0, Llic;->c:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Llic;->b:Ljic;

    iget-wide v1, p0, Llic;->c:J

    invoke-static {v0, v1, v2}, Lnic;->b(Ljic;J)V

    return-void
.end method
