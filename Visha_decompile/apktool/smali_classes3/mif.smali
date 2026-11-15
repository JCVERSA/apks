.class public final synthetic Lmif;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt8i;


# instance fields
.field public final synthetic a:Lrif;

.field public final synthetic b:Lt8i;


# direct methods
.method public synthetic constructor <init>(Lrif;Lt8i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmif;->a:Lrif;

    iput-object p2, p0, Lmif;->b:Lt8i;

    return-void
.end method


# virtual methods
.method public final zza()Lv9i;
    .locals 1

    iget-object v0, p0, Lmif;->a:Lrif;

    iget-object p0, p0, Lmif;->b:Lt8i;

    invoke-static {v0, p0}, Lrif;->Z(Lrif;Lt8i;)Lv9i;

    move-result-object p0

    return-object p0
.end method
