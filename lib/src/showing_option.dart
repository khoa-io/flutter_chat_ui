import 'package:flutter/material.dart';

/// Controls which fields of the message should be showned.
@immutable
class ShowingOption {
  const ShowingOption({
    required this.showUserAvatars,
    required this.showUserNames,
    required this.showCaptionUnderTextMessage,
  });

  /// See [Message.showUserAvatars].
  final bool showUserAvatars;

  /// Show user names for received messages. Useful for a group chat. Will be
  /// shown only on text messages.
  final bool showUserNames;

  /// Show caption under text messages. Used for showing caption and status right under text message.
  final bool showCaptionUnderTextMessage;
}

class InheritedShowingOption extends InheritedWidget {
  const InheritedShowingOption(
    this.options, {
    super.key,
    required super.child,
  });

  static InheritedShowingOption of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<InheritedShowingOption>()!;

  final ShowingOption options;

  @override
  bool updateShouldNotify(covariant InheritedShowingOption oldWidget) =>
      options.hashCode != oldWidget.options.hashCode;
}
