.class public final synthetic Le38;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lf38;


# direct methods
.method public synthetic constructor <init>(Lf38;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le38;->b:Lf38;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Le38;->b:Lf38;

    invoke-static {p0}, Lf38;->a(Lf38;)V

    return-void
.end method
