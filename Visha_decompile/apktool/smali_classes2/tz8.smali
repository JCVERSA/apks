.class public final synthetic Ltz8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc09$b;


# instance fields
.field public final synthetic a:J


# direct methods
.method public synthetic constructor <init>(J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Ltz8;->a:J

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Ltz8;->a:J

    check-cast p1, Landroid/database/Cursor;

    invoke-static {v0, v1, p1}, Lc09;->g(JLandroid/database/Cursor;)Lxna;

    move-result-object p0

    return-object p0
.end method
