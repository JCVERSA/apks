.class public final synthetic Lcom/google/android/material/search/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/google/android/material/search/SearchViewAnimationHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/SearchViewAnimationHelper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/material/search/h;->b:Lcom/google/android/material/search/SearchViewAnimationHelper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/material/search/h;->b:Lcom/google/android/material/search/SearchViewAnimationHelper;

    invoke-static {p0}, Lcom/google/android/material/search/SearchViewAnimationHelper;->d(Lcom/google/android/material/search/SearchViewAnimationHelper;)V

    return-void
.end method
