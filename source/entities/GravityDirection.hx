package entities;

import flixel.math.FlxPoint;
import flixel.FlxObject;

class GravityDirection {
  public static var Up = new GravityDirection(FlxObject.UP, new FlxPoint(0, -G), 90, FlxObject.UP | FlxObject.DOWN);
  public static var Down = new GravityDirection(FlxObject.DOWN, new FlxPoint(0, G), 270, FlxObject.UP | FlxObject.DOWN);
  public static var Left = new GravityDirection(FlxObject.LEFT, new FlxPoint(-G, 0), 180, FlxObject.LEFT | FlxObject.RIGHT);
  public static var Right = new GravityDirection(FlxObject.RIGHT, new FlxPoint(G, 0), 0, FlxObject.LEFT | FlxObject.RIGHT);

  public static inline var G : Float = 48;

  public var Direction(default, null) : Int;
  public var Gravity(default, null) : FlxPoint;
  public var Degrees(default, null) : Float;
  public var CollisionSides(default, null) : Int;

  private function new(Direction:Int, Gravity:FlxPoint, Degrees:Float, CollisionSides:Int) {
    this.Direction = Direction;
    this.Gravity = Gravity;
    this.Degrees = Degrees;
    this.CollisionSides = CollisionSides;
  }
}