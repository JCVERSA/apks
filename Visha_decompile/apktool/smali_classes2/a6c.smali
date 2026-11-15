.class public final synthetic La6c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lc6c$a;

.field public final synthetic c:J

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lc6c$a;JI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La6c;->b:Lc6c$a;

    iput-wide p2, p0, La6c;->c:J

    iput p4, p0, La6c;->d:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, La6c;->b:Lc6c$a;

    iget-wide v1, p0, La6c;->c:J

    iget p0, p0, La6c;->d:I

    invoke-static {v0, v1, v2, p0}, Lc6c$a;->e(Lc6c$a;JI)V

    return-void
.end method
