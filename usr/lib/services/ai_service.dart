import 'dart:async';

class AIService {
  // Mock function to simulate OpenAI response
  // In a real app, this would make an HTTP POST request to https://api.openai.com/v1/chat/completions
  Future<String> getResponse(String prompt) async {
    // Simulate network delay
    await Future.delayed(const Duration(seconds: 1)); 
    
    // Simple keyword-based mock responses
    final lowerPrompt = prompt.toLowerCase();
    
    if (lowerPrompt.contains('hello') || lowerPrompt.contains('hi')) {
      return "Hello! How can I help you today?";
    } else if (lowerPrompt.contains('code') || lowerPrompt.contains('flutter')) {
      return "Flutter is Google's UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase. I can help you write some Flutter code!";
    } else if (lowerPrompt.contains('image')) {
      return "I can't generate images directly in this demo, but DALL-E is the OpenAI model for that.";
    }
    
    return "I am a simulated AI assistant. I received your message: \"$prompt\". To make me real, you would need to integrate the actual OpenAI API key in the service layer.";
  }
}
