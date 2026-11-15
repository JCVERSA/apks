.class public final synthetic Lk5c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc6c$a;

.field public final synthetic c:I

.field public final synthetic d:J


# direct methods
.method public synthetic constructor <init>(Lc6c$a;IJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk5c;->b:Lc6c$a;

    iput p2, p0, Lk5c;->c:I

    iput-wide p3, p0, Lk5c;->d:J

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lk5c;->b:Lc6c$a;

    iget v1, p0, Lk5c;->c:I

    iget-wide v2, p0, Lk5c;->d:J

    invoke-static {v0, v1, v2, v3}, Lc6c$a;->a(Lc6c$a;IJ)V

    return-void
.end method
